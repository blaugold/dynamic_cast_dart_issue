#include <iostream>

extern "C"
{
    void throwException()
    {
        try
        {
            throw std::runtime_error("Hello exception!");
        }
        catch (const std::exception &e)
        {
            auto cast_e = dynamic_cast<const std::runtime_error *>(&e);
            std::cout << e.what() << std::endl;
        }
    }
}