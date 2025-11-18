#pragma once
#include "task.h"
#include <vector>
#include <string>

class Manager {
public:
    void addTask(const std::string& title);
    void completeTask(int index);
    void listTasks() const;
    void save(const std::string& filename) const;
    void load(const std::string& filename);

private:
    std::vector<Task> tasks;
};
