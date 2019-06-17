#include<xparameters.h>
#include<xgpio.h>
#include<xil_printf.h>

#define GPIO_CHANNEL    1
#define GPIO_DD_BITMASK 0b111
#define GPIO_BITMASK    0b111

void bin2grey(unsigned int val, char* retVal, unsigned int bitWidth) {
	unsigned int greyVal;

	switch(val) {
	case 0:
		greyVal = 0;
		break;
	case 1:
		greyVal = 1;
		break;
	case 2:
		greyVal = 3;
		break;
	case 3:
		greyVal = 2;
		break;
	case 4:
		greyVal = 6;
		break;
	case 5:
		greyVal = 7;
		break;
	case 6:
		greyVal = 5;
		break;
	case 7:
		greyVal = 4;
		break;
	default:
		greyVal = 0;
		break;
	}

	// Iterate bitwise over val and write bit values to retVal
	for(unsigned int i = 0 ; i < bitWidth ; i++) {
		if(greyVal & (1 << i)) {
			// fill up string from right
			retVal[bitWidth-i-1] = '1';
		}
		else {
			// fill up string from right
			retVal[bitWidth-i-1] = '0';
		}
	}
	// Terminate string
	retVal[bitWidth] = 0;
}

int main()
{
	XGpio gpio;
	unsigned int lastDIP = 0;
	unsigned int currDIP = 0;
	char printStr[4];

	// Init GPIO
	unsigned int status = XGpio_Initialize(&gpio, XPAR_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS) {
		xil_printf("GPIO Initialization Failed\r\n");
		return XST_FAILURE;
	}

	// Set data direction of GPIOs
	XGpio_SetDataDirection(&gpio, GPIO_CHANNEL, GPIO_DD_BITMASK);

	while (1) {
		// Read from GPIO
		currDIP = XGpio_DiscreteRead(&gpio, GPIO_CHANNEL);

		// Cut away all bits except the 3 LSBs
		currDIP = currDIP & GPIO_BITMASK;

		// Write to UART, if currDIP has changed.

		if(currDIP != lastDIP) {
			bin2grey(currDIP, printStr, 3);
			xil_printf("%s\n", printStr);
		}

		lastDIP = currDIP;
	}

	xil_printf("Successfully ran Gpio Example\r\n");
	return XST_SUCCESS;
}
