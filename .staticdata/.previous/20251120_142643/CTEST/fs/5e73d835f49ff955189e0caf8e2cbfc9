#include "manager.h"
#include <iostream>

int main() {
    Manager m;
    m.load("tasks.txt");

    while (true) {
        std::cout << "\n====== Task Manager ======\n";
        std::cout << "1. Add task\n";
        std::cout << "2. Complete task\n";
        std::cout << "3. List tasks\n";
        std::cout << "4. Save & Exit\n> ";

        int sel; 
        std::cin >> sel;
        std::cin.ignore();

        if (sel == 1) {
            std::cout << "Task title: ";
            std::string title; 
            std::getline(std::cin, title);
            m.addTask(title);
        } 
        else if (sel == 2) {
            m.listTasks();
            std::cout << "Index to complete: ";
            int idx; std::cin >> idx;
            m.completeTask(idx);
        } 
        else if (sel == 3) {
            m.listTasks();
        } 
        else if (sel == 4) {
            m.save("tasks.txt");
            std::cout << "Tasks saved. Goodbye!\n";
            break;
        } 
        else {
            std::cout << "Invalid choice.\n";
        }
    }

    return 0;
}
