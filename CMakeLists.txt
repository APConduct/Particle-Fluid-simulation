cmake_minimum_required(VERSION 3.30)
set(CMAKE_CXX_STANDARD 20)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++20 -O0 -g -ggdb3 -DDEBUG -Wall -Wextra -Wshadow -Wpedantic -Wno-variadic-macros -Wno-multistatement-macros -Wstringop-overflow -Werror=return-type") 

project(particle_sim)
add_subdirectory(extern)
add_subdirectory(src)

include_directories(fluidsim/)
include_directories(fluidsim/extern/imgui)
include_directories(fluidsim/extern/implot)

add_executable(fluidsim
    fluidsim/main.cpp

    fluidsim/extern/imguiimgui.cpp
    fluidsim/extern/imguiimgui_demo.cpp
    fluidsim/extern/imguiimgui_draw.cpp
    fluidsim/extern/imguiimgui_tables.cpp
    fluidsim/extern/imguiimgui_widgets.cpp

    fluidsim/extern/implot/implot.cpp
    fluidsim/extern/implot/implot_demo.cpp
    fluidsim/extern/implot/implot_items.cpp
)

find_package(SFML REQUIRED)

target_link_libraries(triangulite
    SFML::SFML
)
