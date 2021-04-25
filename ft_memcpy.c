#include "libft.h"

void* ft_memcpy(void *dest, const void *src, size_t count)
{
	unsigned char	*d;
	unsigned char	*s;

	d = (unsigned char *)dest;
	s = (unsigned char *)src;
	while (count--)
	{
		*d++ = *s++;
	}
	return (dest);
}