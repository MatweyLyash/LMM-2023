#include <iostream>
#include <Windows.h>

extern "C"
{
	void BREAKL()
	{
		std::cout << std::endl;
	}

	void OutputChar(char a)
	{
		SetConsoleCP(1251);
		SetConsoleOutputCP(1251);
		std::cout << a;
	}
	void OutputLNChar(char a)
	{
		SetConsoleCP(1251);
		SetConsoleOutputCP(1251);
		std::cout << a;
		std::cout << std::endl;
	}

	void OutputInt(unsigned int a)
	{
		std::cout << a;
	}
	void OutputLNInt(unsigned int a)
	{
		std::cout << a;
		std::cout << std::endl;
	}

	void OutputStr(char* ptr)
	{
		SetConsoleCP(1251);
		SetConsoleOutputCP(1251);

		if (ptr == nullptr)
		{
			std::cout << std::endl;
			return;
		}
		for (int i = 0; ptr[i] != '\0'; i++)
		{
			std::cout << ptr[i];
		}
	}
	void OutputLNStr(char* ptr)
	{
		SetConsoleCP(1251);
		SetConsoleOutputCP(1251);

		if (ptr == nullptr)
		{
			std::cout << std::endl;
			return;
		}
		for (int i = 0; ptr[i] != '\0'; i++)
		{
			std::cout << ptr[i];
		}
		std::cout << std::endl;
	}
	void OutputBool(int a)
	{
		if (a == 1)
			std::cout << "TRUE";
		else
			std::cout << "FALSE";
	}
	void OutputLNBool(int a)
	{
		if (a == 1)
			std::cout << "TRUE";
		else
			std::cout << "FALSE";
		std::cout << std::endl;
	}

	int strlength(char* str)
	{
		return strlen(str);
	}

	int stoi(char* str)
	{
		int i = strlen(str), k = 1, sign = 1, end = 0;
		int num = 0;
	
		for (i; i >= end; i--)
		{
			if (str[i] >= '0' && str[i] < '9')
			{
				num += k * (str[i] - '0');
				k *= 10;
			}
			else
			{
				num = 0;
				k = 1;
			}
		}
		return sign * num;
	}

	int strcomp(char* str1, char* str2) 
	{
		int i = NULL, len1 = NULL, len2 = NULL;
		for (; str1[len1] != '\0'; len1++);
		for (; str2[len2] != '\0'; len2++);
		int length = len1 > len2 ? len2 : len1;
		for (int k = 0; i < length; k++, i++)
		{
			if (str1[k] != str2[i])
			{
				if (str1[k] > str2[i])
					return 1;
				else if (str1[k] < str2[i])
					return 2;
			}
		}
		if (len1 != len2)
			return len1 > len2 ? 1 : 2;
		return 0;
	}
}
