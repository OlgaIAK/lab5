[![Coverage Status](https://coveralls.io/repos/github/OlgaIAK/lab5/badge.svg?branch=main)](https://coveralls.io/github/OlgaIAK/lab5?branch=main)
# Лабораторная работа №5: Тестирование с GTest и GMock

**Студент:** Ольга (ИУ8-25)  
**Репозиторий:** https://github.com/OlgaIAK/lab5

## Цель работы
Изучить фреймворки Google Test и Google Mock для написания модульных тестов C++.

## Выполненные действия

### 1. Подключение Google Test
- Google Test добавлен как git submodule
- Настроен `CMakeLists.txt` для сборки с тестами

### 2. Написание тестов
Созданы **Mock-объекты** для изолированного тестирования:

```cpp
class MockBankAccount : public Account {
public:
    MOCK_METHOD(int, GetCurrentBalance, ());
    MOCK_METHOD(void, UpdateBalance, (int amount));
    MOCK_METHOD(void, SecureLock, ());
    MOCK_METHOD(void, SecureUnlock, ());
};

class MockMoneyTransfer : public Transaction {
public:
    MOCK_METHOD(int, GetTransactionFee, ());
    MOCK_METHOD(void, SetTransactionFee, (int fee_amount));
    MOCK_METHOD(bool, ExecuteTransfer, (Account&, Account&, int));
};
