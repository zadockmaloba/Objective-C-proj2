//
//  TestAPI.cpp
//  Objective-C-proj2
//
//  Created by Zadock Maloba on 15/04/2024.
//

#include "TestAPI.h"
#include <vector>
#include <memory>
#include <string>

const char* test_api_hello() {
    std::vector<std::string> vec;
    vec.emplace_back("Zadock");
    vec.emplace_back("Maloba");
    return vec[1].c_str();
}
