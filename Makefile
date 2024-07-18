up:
	@echo "starting"
	@verba start --port 8000 --host 0.0.0.0

test:
	# @alembic upgrade head
	@clear
	@pytest  --durations=0 -v --cov=app

format:
	@isort app/
	@isort tests/
	@black app/
	@black tests/
