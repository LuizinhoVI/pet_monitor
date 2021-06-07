#include <iostream>
#include <locale.h>
#include <stdlib.h>
using namespace std;


class dados_do_pet
{
public:
    string nome;
    int idade;
    string tipo;
    string sexo;
    int id;

private:
};

class dados_do_rastreador
{

public:
    string data;
    string localiza;
    string hora;
    int id;

private:
};

class rastreador_movel
{
public:
    int id;
    string data_atv;
};

dados_do_pet *pet = new dados_do_pet;
rastreador_movel *ras = new rastreador_movel;
dados_do_rastreador *d_ras = new dados_do_rastreador;

void cadastrar_pet();
void rastreador();
void relatorio_do_rastreador();
char menu();

// menu --------------------------------------------------------------------------
int main()
{
    setlocale(LC_ALL, " ");

    bool setup = true;

    while (setup)
    {
        char escolher;
        escolher = menu();

        if (escolher == '1')
        {
            cadastrar_pet();
        }
        if (escolher == '2')
        {
            rastreador();
        }
        if (escolher == '3')
        {

            relatorio_do_rastreador();
        }
        if (escolher == '4')
        {

            setup = false;
        }
    }

    return 0;
}

void cadastrar_pet()
{

    cout << "--cadasto do pet -> \n";
    cout << " Nome..........: ";
    cin >> pet->nome;
    cout << endl;
    cout << " Tipo..........: ";
    cin >> pet->tipo;
    cout << endl;
    cout << " Idade.........: ";
    cin >> pet->idade;
    cout << endl;
    cout << " Sexo...........: ";
    cin >> pet->sexo;
    cout << endl;
    cout << "-------------------------------> \n";
    system("cls");
}

void rastreador()
{

    cout << "----------RASTREADOR-------------\n";
    cout << "ID.................: ";
    cin >> ras->id;
    ras->id = d_ras->id;
    cout << endl;
    cout << "Data de ativacao...: ";
    cin >> ras->data_atv;
    ras->data_atv = d_ras->data;
    cout << endl;
    system("cls");
}

char menu()
{
    char escolhas;
    cout << "----------PET Monitor----------\n";
    cout << "1)Cadastrar pet \n";
    cout << "2)Cadastrar rastreador \n";
    cout << "3)Mostrar localizacao \n";
    cout << "4) SAIR  \n";
    cout << "Escolha... :";
    cin >> escolhas;
    system("cls");

    return escolhas;
}

void relatorio_do_rastreador()
{
    cout << "----------------relatoria dos rastreador-------------------\n";
    d_ras->localiza = "-10098765  9875655";
    cout << "ID :" << d_ras->id;
    cout << "\n";
    cout << " DATA :";
    system("date /t");
    cout << "HORA : ";
    system("time /t");
    cout << "LOCALIZACAO :";
    cout << d_ras->localiza << endl;
    system("pause");
    system("cls");
}
