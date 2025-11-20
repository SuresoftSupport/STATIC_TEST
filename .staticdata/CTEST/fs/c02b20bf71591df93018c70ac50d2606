#include "task.h"
#include <sstream>

Task::Task(std::string title, bool done) : title(title), done(done) {}

void Task::markDone() { done = true; }

std::string Task::toString() const {
    std::ostringstream oss;
    oss << (done ? "[X] " : "[ ] ") << title;
    return oss.str();
}

bool Task::isDone() const { return done; }
std::string Task::getTitle() const { return title; }
