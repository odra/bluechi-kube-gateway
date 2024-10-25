SHELL := /bin/bash
PY := poetry run python
PYTEST := ${PY} -m pytest
SRC_DIR := ./src
TEST_DIR := ./test
TEST_OPTS := 
MYPY := ${PY} -m mypy
MYPY_OTPS := --strict

.PHONY: test/mypy
test/mypy:
	${MYPY} ${MYPY_OPTS} ${SRC_DIR}

.PHONY: test/pytest
test/pytest:
	${PYTEST} ${TEST_OPTS} ${TEST_DIR}

.PHONY: test
test: test/mypy test/pytest
