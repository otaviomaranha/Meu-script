#!/bin/bash
def calculadora():
    while True:
        print("\nSelecione a operação:")
        print("1. Soma")
        print("2. Subtração")
        print("3. Multiplicação")
        print("4. Divisão")
        print("5. Sair")

        escolha = input("Digite sua escolha (1/2/3/4/5): ")

        if escolha == '5':
            print("Saindo da calculadora. Volte sempre!")
            break

        if escolha in ('1', '2', '3', '4'):
            try:
                num1 = float(input("Digite o primeiro número: "))
                num2 = float(input("Digite o segundo número: "))

                if escolha == '1':
                    resultado = num1 + num2
                    print(f"O resultado da soma é: {resultado}")

                elif escolha == '2':
                    resultado = num1 - num2
                    print(f"O resultado da subtração é: {resultado}")

                elif escolha == '3':
                    resultado = num1 * num2
                    print(f"O resultado da multiplicação é: {resultado}")

                elif escolha == '4':
                    if num2 == 0:
                        print("Erro: Divisão por zero não é permitida.")
                    else:
                        resultado = num1 / num2
                        print(f"O resultado da divisão é: {resultado}")

            except ValueError:
                print("Por favor, insira números válidos.")
        else:
            print("Escolha inválida! Tente novamente.")

calculadora()
