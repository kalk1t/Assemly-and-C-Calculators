#include "externs.c"
#include "ADD.c"
#include "SUB.c"
#include "MUL.c"
#include "DEV.c"
#include "FACT.c"
#include "KEY.c"



int main()
{
	
A:
	int OPT = "";
	printf("\nCALCULATION - 1\nINFO - 2\nEXIT - 0\n");
	printf("Choose Operation:");scanf("%d", &OPT);
	
	if (OPT == 1)
	{
	B:
		int OPT_2 = "";
		printf("\n\t\t1 - (+), \n\t\t2 - (-), \n\t\t3 - (*), \n\t\t4 - (/ ), \n\t\t5 - (!),\n\t\t9 - (Back to main menu) ");
		printf("\nChoose Operation:");scanf("%d", &OPT_2);
		switch (OPT_2)
		{
		case 1:

			{
				int OP_1 = "";
				int OP_2 = "";
				int k = 0;
				printf("\nFirst Operand:");
				scanf("%d", &OP_1);
				printf("\nSecond Operand:");
				scanf("%d", &OP_2);

				k = ADD(OP_1, OP_2);

				printf("\n%d + %d = %d", OP_1, OP_2, k);
				goto B;
			}
			break;
		case 2:
		{
			int OP_3 = "";
			int OP_4 = "";
			int k = 0;
			printf("\nFirst Operand:");
			scanf("%d", &OP_3);
			printf("\nSecond Operand:");
			scanf("%d", &OP_4);

			k = SUB(OP_3, OP_4);

			printf("\n%d - %d = %d", OP_3, OP_4, k);
			goto B;
		}
		break;
		case 3:
		{
			int OP_5 = "";
			int OP_6 = "";
			int k = 0;
			printf("\nFirst Operand:");
			scanf("%d", &OP_5);
			printf("\nSecond Operand:");
			scanf("%d", &OP_6);

			k = MUL(OP_5, OP_6);

			printf("\n%d * %d = %d", OP_5, OP_6, k);
			goto B;
		}
		break;
		case 4:
		{
			int *OP_7 = "";
			int *OP_8 = "";
			int k = 0;
			int r = 0;
			printf("\nFirst Operand:");
			scanf("%d", &OP_7);
			printf("\nSecond Operand:");
			scanf("%d", &OP_8);

			k = DEV(OP_7, OP_8);
			//r=OP_& - ( OP_8 * k);
			printf("\n%d : %d = %d", OP_7, OP_8, k);
			//printf("\nRemains: %d", r);
			goto B;
		}
		break;
		case 5:
		{
			int OP_9 = "";
			int k = 0;
			printf("\nOperand:");
			scanf("%d", &OP_9);


			k = FACT(OP_9);

			printf("\n%d!= %d", OP_9, k);
			goto A;
		}
		break;
		case 9:
		{
			goto A;
		}
		break;
		}
		
	}
	
	if (OPT == 2)
	{
		
		printf("\n\t\tMade with C Language By Giorgi Samkharadze / v.01 / Date : 03/12/2024");
		goto A;
	}

	if (OPT == 0)
	{
		exit(21);
	}
	
	while(OPT>=3)
	{
		goto A;
	}

	

	return 21;
}
