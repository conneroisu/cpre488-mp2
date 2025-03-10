
#include "control.h"
#include "xil_types.h"

#define BUTTON_TRI *((volatile u32*) (BUTTON_BASE_ADDR + GPIO_TRI_OFFSET))
#define SWITCH_TRI *((volatile u32*) (SWITCH_BASE_ADDR + GPIO_TRI_OFFSET))

#define BUTTON_DATA *((volatile u32*) (BUTTON_BASE_ADDR + GPIO_DATA_OFFSET))
#define SWITCH_DATA *((volatile u32*) (SWITCH_BASE_ADDR + GPIO_DATA_OFFSET))

void init_interface()
{
	BUTTON_TRI = TRI_INPUT;
	SWITCH_TRI = TRI_INPUT;
}

u32 get_button_states()
{
	return BUTTON_DATA;
}

u32 get_switch_states()
{
	return SWITCH_DATA;
}

int button_pressed(t_buttons button, u32 state)
{
	return (state & (u32) button) > 0;
}
