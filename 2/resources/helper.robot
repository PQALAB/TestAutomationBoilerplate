*** Settings ***
Library         SeleniumLibrary
Library         String
Library         Collections
Library         DebugLibrary
Library         ./plusqa_library.py

Resource        ./setup.robot
Resource        ./plusqa.robot

Resource        ./keywords/2_test_suite_structure_given.robot
Resource        ./keywords/2_test_suite_structure_when.robot
Resource        ./keywords/2_test_suite_structure_then.robot

Resource        ./keywords/3_amazon_given.robot
Resource        ./keywords/3_amazon_when.robot
Resource        ./keywords/3_amazon_then.robot
