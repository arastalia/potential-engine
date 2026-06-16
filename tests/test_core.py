"""Tests for potential_engine.core."""

from potential_engine import greet


def test_greet_default():
    assert greet() == "Hello, world!"


def test_greet_named():
    assert greet("Sara") == "Hello, Sara!"
