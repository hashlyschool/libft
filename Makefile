NAME		= libft.a
CC			= gcc
INCLUDE		= libft.h
FLAGS		= -Wall -Wextra -Werror -c
RM			= rm -f
AR			= ar rcs
SRCS		= ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c \
			ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c \
			ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
			ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isdigit.c \
			ft_isalpha.c ft_isalnum.c ft_isascii.c ft_isprint.c \
			ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c \
			ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
			ft_itoa.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c \
			ft_putendl_fd.c ft_putnbr_fd.c
OBJS		= $(SRCS:.c=.o)
BONUS_SRCS	= ft_lstnew.c
BONUS_OBJS	= $(BONUS_SRCS:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJS)
	$(AR) $(NAME) $(OBJS)

$(OBJS):	$(SRCS)
	$(CC) $(FLAGS) $(SRCS)

clean:
	$(RM) $(OBJS)

fclean:		clean
	$(RM) $(NAME)

re:			fclean all

so: re
	$(RM) libft.so
	$(CC) -fPIC $(FLAGS) $(SRCS)
	gcc -shared -o libft.so $(OBJS)

.PHONY: all clean fclean re
