
#include <stdio.h>

int main(void)
{
int age, days;
int count = 0;
printf("Enter your age: "); //comment
scanf("%d", &age);
if(age < 0)
{
printf("Wrong age!! Enter correct age: ");
scanf("%d", &age);
}
for(int i = 2017 - age; i <= 2017; i++)
{
if(i%4 == 0){
count++;
}
}
days = 364 * count + 365 * (age - count);
printf("You are on the Earth ");
printf("%d", days);
printf(" days\n");
<<<<<<< HEAD
printf("end");//sdfsdfsd
=======
printf("end");
>>>>>>> 5c7df7c301748bcd1ac16b4a15a67dda118b09dd
}
