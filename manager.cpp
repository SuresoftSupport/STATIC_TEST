#include "manager.h"
#include <iostream>
#include <fstream>

void Manager::addTask(const std::string& title) {
    tasks.emplace_back(title);
}

void Manager::completeTask(int index) {
    if (index >= 0 && index < (int)tasks.size())
        tasks[index].markDone();
}

void Manager::listTasks() const {
    if (tasks.empty()) {
        std::cout << "No tasks yet.\n";
        return;
    }
    for (size_t i = 0; i < tasks.size(); ++i)
        std::cout << i << ". " << tasks[i].toString() << "\n";
}

void Manager::save(const std::string& filename) const {
    std::ofstream ofs(filename);
    for (auto& t : tasks)
        ofs << t.isDone() << "," << t.getTitle() << "\n";
}

void Manager::load(const std::string& filename) {
    std::ifstream ifs(filename);
    if (!ifs) return;

    tasks.clear();
    bool done;
    std::string title;
    std::string line;
    while (std::getline(ifs, line)) {
        size_t comma = line.find(',');
        if (comma == std::string::npos) continue;
        done = std::stoi(line.substr(0, comma));
        title = line.substr(comma + 1);
        tasks.emplace_back(title, done);
    }
}
