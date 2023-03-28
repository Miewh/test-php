# Тестовое задание для PHP-разработчика (Senior, Middle+)

Срок реализации не ограничен.

Результат выполнения необходимо предоставить в виде ссылки на расшаренный документ (github repo/gist, gitlab repo/snippet, gogole doc/drive, yandex disk и т.п.).

Если задание выполнено не на 100% верно, но логика реализации в правильном направление на 2/3, то выполнение будет засчитано.

# Задание 1
Написать SQL-запросы (MySQL):
1. Выборки пользователей, у которых количество постов больше, чем у пользователя их пригласившего.
2. Выборки пользователей, имеющих максимальное количество постов в своей группе.
3. Выборки групп, количество пользователей в которых превышает 10000.
4. Выборки пользователей, у которых пригласивший их пользователь из другой группы.
5. Выборки групп с максимальным количеством постов у пользователей.

```sql
create table groups
(
    id   int         not null primary key,
    name varchar(50) not null
);

create table users
(
    id                      int         not null primary key,
    group_id                int         not null,
    invited_by_user_id      int         not null,
    name                    varchar(50) not null,
    posts_qty               int         not null,
    constraint  fk_users_group_id
        foreign key (group_id) references `groups` (id)
            on update cascade on delete cascade
);

insert into groups 
    (id, name)
values
    (1, 'Группа 1'),
    (2, 'Группа 2');

insert into users
    (id, group_id, invited_by_user_id, name, posts_qty)
values
    (1, 1, 0, 'Пользователь 1', 0),
    (2, 1, 1, 'Пользователь 2', 2),
    (3, 1, 2, 'Пользователь 3', 5),
    (4, 2, 3, 'Пользователь 4', 7),
    (5, 2, 4, 'Пользователь 5', 1);
