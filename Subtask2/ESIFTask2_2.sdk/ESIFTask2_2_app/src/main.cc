#include<xparameters.h>
#include<xgpio.h>
#include<xil_printf.h>
#include<limits.h>

#define GPIO_CHANNEL_SWITCHES    1
#define GPIO_CHANNEL_DUTYCYCLE    2
#define GPIO_DD_RECV_BITMASK 0b11111111
#define GPIO_DD_SEND_BITMASK 0
#define GPIO_BITMASK    0b11111111

int main()
{
	XGpio gpio;
	unsigned int lastDIP = 0;
	unsigned int currDIP = 0;
	float dutyCyclePercent = 0;

	// Init GPIO
	unsigned int status = XGpio_Initialize(&gpio, XPAR_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS) {
		xil_printf("GPIO Initialization Failed\r\n");
		return XST_FAILURE;
	}

	// Set data direction of GPIOs
	XGpio_SetDataDirection(&gpio, GPIO_CHANNEL_SWITCHES, GPIO_DD_RECV_BITMASK);
	XGpio_SetDataDirection(&gpio, GPIO_CHANNEL_DUTYCYCLE, GPIO_DD_SEND_BITMASK);

	while (1) {
		// Read from GPIO
		currDIP = XGpio_DiscreteRead(&gpio, GPIO_CHANNEL_SWITCHES);

		// Cut away all bits except the 8 LSBs
		currDIP = currDIP & GPIO_BITMASK;

		// Compute Duty Cycle Percantage Value
		dutyCyclePercent = ((float)currDIP / UCHAR_MAX) * 100;

		// Shift current bitvalue 24 bits to the left
		currDIP = currDIP << 24;

		// Write duty cycle to UART and pwmBlock_0-module, if currDIP has changed.
		if(currDIP != lastDIP) {
			xil_printf("%i%%\n", (unsigned int)dutyCyclePercent);
			XGpio_DiscreteWrite(&gpio, GPIO_CHANNEL_DUTYCYCLE, currDIP);
		}

		lastDIP = currDIP;
	}

	xil_printf("Successfully ran Gpio Example\r\n");
	return XST_SUCCESS;
}
