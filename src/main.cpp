#include <iostream>
using namespace std;

int main(){

    string unit;
    double temperature;
    if(!(cin >> unit >> temperature)){
        cout << "Invalid Input" << endl;
        return 0;
    } 

    if(unit == "c"){
        double temperature_fahrenheit = temperature * 9.0/5.0 + 32.0;
        cout << temperature << " "<< unit << " converts to " << temperature_fahrenheit << " f" << endl;
    }
    else if(unit == "f"){
        double temperature_celcius = (temperature - 32.0) * (5.0/9.0);
        cout << temperature << " " << unit << " converts to " << temperature_celcius << " c" << endl;
    }
    else{
        cout << "Invalid Input" << endl;
    }
    
    return 0;
}
