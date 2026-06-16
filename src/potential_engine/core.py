"""Core functionality for Potential Engine."""

from __future__ import annotations


def greet(name: str = "world") -> str:
    """Return a friendly greeting.

    Args:
        name: The name to greet. Defaults to ``"world"``.

    Returns:
        A greeting string.
    """
    return f"Hello, {name}!"
