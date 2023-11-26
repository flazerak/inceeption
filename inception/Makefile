all: up

up:
	@mkdir -p /Users/flazerak/Desktop/data/vol_wordpress  \
		/Users/flazerak/Desktop/data/vol_mariadb
	@docker-compose -f ./srcs/docker-compose.yml up -d
down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean: down
	@docker-compose -f ./srcs/docker-compose.yml down -v
	@docker system prune -af


fclean:	clean
	@rm -rf /Users/flazerak/Desktop/data

.PHONY: all clean fclean up down
