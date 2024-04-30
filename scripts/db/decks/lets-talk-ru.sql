delete from questions where level_id in (select id from levels where deck_id = 'letsTalkRu');
delete from levels where deck_id = 'letsTalkRu';
delete from decks where id = 'letsTalkRu';

INSERT INTO decks values ('letsTalkRu', 'RU', 'Давай поболтаем', '😉', 'Вопросы на для любой пары друзей, партнеров или незнакомцев. Читающий задает вопрос другому, или себе - определите это перед тем как начнёте играть.', 'good to start;besties', 'lamp');
INSERT INTO levels (id, deck_id, level_order, name, emoji, color_start, color_end, color_button)
VALUES ('9b2b10c2-7b5f-4840-a684-625fb90007a0', 'letsTalkRu', 1, 'Знакомство', '🙂', '74,62,255', '219, 100,255', '164,119,105'),
       ('b467736b-ce84-4d67-ba96-8eed00e69bc4', 'letsTalkRu', 2, 'Сближение', '😏', '254,141,63', '186,55,101', '105,123,164'),
       ('fe754eb8-8fb9-43f0-970b-c94a3a0691a8', 'letsTalkRu', 3, 'Открытость', '😌', '26,59,153', '95,150,51', '121,156,128');

INSERT INTO questions values ('bdef84fe-c128-4fd1-97d9-7d6bbc130515','9b2b10c2-7b5f-4840-a684-625fb90007a0','Часто ли ты занимаешься спортом? Какой твой любимый?',null),
                             ('83e46988-2688-4382-b59f-3c6aa74457af','b467736b-ce84-4d67-ba96-8eed00e69bc4','Какое было твое самое интересное путешествие?',null),
                             ('9e54d8b3-7a0c-4c2a-c2c8-3d69e22dbc20','9b2b10c2-7b5f-4840-a684-625fb90007a0','Можешь ли ты назвать себя тактильным человеком?',null),
                             ('ff0019e4-2fbf-4357-f595-df11c1168ada','b467736b-ce84-4d67-ba96-8eed00e69bc4','Как ты обращаешься с деньгами?',null),
                             ('2a579524-8783-4f81-dd85-39ad870b4b0f','b467736b-ce84-4d67-ba96-8eed00e69bc4','Что ты считаешь дружбой?',null),
                             ('75525f07-be3d-457f-d996-49293ffe8b14','b467736b-ce84-4d67-ba96-8eed00e69bc4','Из за чего ты чаще совершаешь необычные поступки?',null),
                             ('f4382778-39b3-427c-d8a6-23be754c297b','b467736b-ce84-4d67-ba96-8eed00e69bc4','Какое твое первое впечатление обо мне? В чем отличие от текущего образа?',null),
                             ('60a7c962-da67-4284-b38b-ec03b33780bb','b467736b-ce84-4d67-ba96-8eed00e69bc4','Как тебе мой стайл?',null),
                             ('262a3fc8-d3b9-4b0e-fef6-75fefb248e08','9b2b10c2-7b5f-4840-a684-625fb90007a0','Что тебя во мне удивило?',null),
                             ('f7dd73a8-1557-46ba-fffc-ece493965a8e','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Что самое запоминающееся было в нашем общении?',null),
                             ('724b0036-8930-46d3-f65f-7782ba2983ab','9b2b10c2-7b5f-4840-a684-625fb90007a0','Кого из твоих знакомых я тебе напоминаю?',null),
                             ('1c864a5a-1a00-488c-c911-95ce7728907e','9b2b10c2-7b5f-4840-a684-625fb90007a0','Что означает твое имя?',null),
                             ('5f295c86-3ec8-441c-878d-90e748519479','9b2b10c2-7b5f-4840-a684-625fb90007a0','Я выгляжу добрым(ой)? Почему, или почему нет?',null),
                             ('212e623a-6a9a-45d0-ac5f-07ddfd22912a','b467736b-ce84-4d67-ba96-8eed00e69bc4','Как твои дела? А на самом деле?','Задай вопросы по очереди'),
                             ('a9640f44-b6ff-497b-b7b7-57a7e84d302d','9b2b10c2-7b5f-4840-a684-625fb90007a0','Какая сейчас твоя самая любимая песня?',null),
                             ('721e0253-8266-463a-d961-308991a65dba','9b2b10c2-7b5f-4840-a684-625fb90007a0','Ты хотел(а) бы стать известным(ой)? Каким образом?',null),
                             ('3e57d6fb-e26d-4a6b-ae5c-ba1e856ce741','9b2b10c2-7b5f-4840-a684-625fb90007a0','Внимательно посмотрите друг другу в глаза и опишите глаза собеседника',null),
                             ('5a551813-619b-46bd-b54f-46ece326df69','b467736b-ce84-4d67-ba96-8eed00e69bc4','На какие вопросы ты пытаешься ответить в своей жизни прямо сейчас?',null),
                             ('f0ca6ac0-0304-4e6d-c681-be3e6b992c36','b467736b-ce84-4d67-ba96-8eed00e69bc4','Чего бы тебе сейчас хотелось больше всего?',null),
                             ('f47355b0-8aaa-4437-8cd7-7692464435b8','b467736b-ce84-4d67-ba96-8eed00e69bc4','Что бы ты мог(ла) сделать лучше в предыдущих отношениях?',null),
                             ('3813835d-4cdd-4a31-a863-791d56299e87','b467736b-ce84-4d67-ba96-8eed00e69bc4','Как бы ты описал(а) меня незнакомцу?',null),
                             ('5fa313a7-d26b-4f8e-ab7d-6c7f51e30669','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Как ты думаешь, что я должен знать о себе, чего, возможно, я не знаю?',null),
                             ('f52986a2-a890-4beb-8f74-dac47db1ea1b','9b2b10c2-7b5f-4840-a684-625fb90007a0','Чему в твоей жизни сегодня не поверил бы ты из прошлого?',null),
                             ('58897d57-294d-40c6-a4ef-71b3735827ac','9b2b10c2-7b5f-4840-a684-625fb90007a0','Что тебя драйвит в твоем деле? А что отталкивает?','Задай вопросы по-очереди'),
                             ('85da3210-65f6-4dc5-886d-fa696986a3f9','9b2b10c2-7b5f-4840-a684-625fb90007a0','Включи любой трек из своего плейлиста',null),
                             ('6afc98bc-a564-4566-b7b3-51829019acea','b467736b-ce84-4d67-ba96-8eed00e69bc4','Какая была твоя самая безрассудная покупка?',null),
                             ('b3843fdb-b2be-4d20-ab45-504245c25407','9b2b10c2-7b5f-4840-a684-625fb90007a0','Как ты обычно проводишь выходные?',null),
                             ('2fa319cd-9656-496c-c1ae-452ee4fd07ce','9b2b10c2-7b5f-4840-a684-625fb90007a0','Какой навык ты хочешь освоить сейчас больше всего?',null),
                             ('d3d2f1c7-bf25-4373-8173-0bee9df0c4bd','9b2b10c2-7b5f-4840-a684-625fb90007a0','Что тебя мотивирует или вдохновляет в твоей жизни?',null),
                             ('e35d2ccc-d056-4ee2-ec6d-1a88dcce722d','9b2b10c2-7b5f-4840-a684-625fb90007a0','В каком самом необычном месте тебе приходилось бывать?',null),
                             ('38c26de0-ea9f-4bd9-ebb4-a6b4e2db06c2','9b2b10c2-7b5f-4840-a684-625fb90007a0','Какой фильм/книга на тебя повлияли в последнее время?',null),
                             ('f3417142-2950-4e8d-a962-5e23f864ecd9','b467736b-ce84-4d67-ba96-8eed00e69bc4','Были ли у тебя мечты о каком-либо увлечении, которое тебе так и не удалось попробовать?',null),
                             ('420f96fc-fcd6-436d-feb0-98704b76011d','9b2b10c2-7b5f-4840-a684-625fb90007a0','Есть ли у тебя черта, отличающая тебя от большинства людей?',null),
                             ('af48b30f-b7be-48be-d325-4cb9cb44455b','9b2b10c2-7b5f-4840-a684-625fb90007a0','Что ты думаешь о балансе между работой и личной жизнью?',null),
                             ('4c0c4b63-b7eb-4ba3-8721-19e809baa5dd','b467736b-ce84-4d67-ba96-8eed00e69bc4','Покажи последнее фото в галерее, сделанное до нашей встречи. Расскажи, почему оно было сделано?',null),
                             ('69d37a1f-00e2-4a2c-f13e-e215d8a72263','b467736b-ce84-4d67-ba96-8eed00e69bc4','Есть ли принципы, которые ты считаешь важными для себя?',null),
                             ('c6fbca3b-f46f-4679-8149-309c004e385e','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Что тебе приносит самое большое удовлетворение?',null),
                             ('92e3af35-3795-42e5-eb1f-da3f027e14d3','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Есть ли в твоей жизни то, что хотелось бы изменить прямо сейчас?',null),
                             ('5480af3d-9fbe-4189-da0e-a2902c5c9014','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Когда в последний раз у тебя был большой стресс? Как тебе удалось с ним справиться?',null),
                             ('c58adfd9-f296-4cfc-bfd3-4fe93a28aa6f','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Какое событие оказало наибольшее влияние на твою жизнь?',null),
                             ('b7a3dc7f-ced5-4149-db7f-485c04c24525','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Что для тебя значит "быть счастливым"?',null),
                             ('45864d89-d61b-448a-e72b-c29296a9b943','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Часто ли ты прощаешь людей?',null),
                             ('a41ebfff-bca2-4c55-e8d9-f5b26c3f4693','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Как ты обращаешься с деньгами? Много ли ты копишь?',null),
                             ('79373380-93be-4356-acba-2aca0937c78b','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Тебе бы лучше жилось в большом мегаполисе, или в маленьком городке?',null),
                             ('52867373-a2c8-456b-8d4f-62254623ae03','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Что ты чувствуешь, когда думаешь о своей смертности? Боишься ли ты умереть?',null),
                             ('aebe8c8e-353a-4605-973f-f8e46120849f','b467736b-ce84-4d67-ba96-8eed00e69bc4','Что ты считаешь своими самыми большими достижениями?',null),
                             ('564d53bd-f836-40df-ae54-e39879970396','b467736b-ce84-4d67-ba96-8eed00e69bc4','Как ты можешь описать свой стиль общения с другими людьми?',null),
                             ('dd46be89-cc76-4b25-8989-4701736a8cc2','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Есть ли у тебя необычные увлечения или хобби, о которых мало кто знает?',null),
                             ('63c5fffa-283a-4592-8881-52b024887d72','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Удалось ли тебе чему-то научить своих родителей?',null),
                             ('593fbc57-3121-4b10-f99c-89594a6c69e6','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Какой аспект твоей личности ты считаешь наименее понятным для других?',null),
                             ('046cf228-7611-4500-dbdb-6dc44c71e599','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Бежишь ли ты от чего-то?',null),
                             ('da551c6f-0d00-432a-c54f-d0f2f7224949','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Какой был твой самый близкий к смерти момент?',null),
                             ('1a9c0b14-adbf-4e57-c80b-fb4d2c4793b5','9b2b10c2-7b5f-4840-a684-625fb90007a0','Какую песню ты можешь переслушивать вечно?',null),
                             ('333a512a-5367-4409-e797-eb36f8a7b082','9b2b10c2-7b5f-4840-a684-625fb90007a0','Какой фильм ты можешь пересматривать вечно?',null),
                             ('3c1e143c-81b7-4d75-8565-3109d21221d4','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Какую (возможно неприятную) правду тебе бы хотелось о себе узнать?',null),
                             ('2999b959-1b9d-4a89-cb42-ecfbdab7e099','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Что бы тебе хотелось поменять в собеседнике?',null),
                             ('c12c52ae-b745-44d2-f1e8-bf1cce2aa070','b467736b-ce84-4d67-ba96-8eed00e69bc4','Опиши свои ощущения от этого дня',null),
                             ('bec14d5e-7039-4e54-cd27-5a212b16803a','b467736b-ce84-4d67-ba96-8eed00e69bc4','Обсудите, что вам больше всего нравится друг в друге',null),
                             ('4d9dbfa3-6eb3-4897-9481-53326276f1a9','9b2b10c2-7b5f-4840-a684-625fb90007a0','Как ты думаешь, какая твоя самая лучшая черта?',null),
                             ('1963bc97-6f02-4f4f-bec4-6cd621f98fae','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Что тебе не нравится или кажется странным в собеседнике?',null),
                             ('916f4ebc-81b6-42c3-dd24-f0ca665faf4c','b467736b-ce84-4d67-ba96-8eed00e69bc4','Что тебе нравится больше всего в собеседнике?',null),
                             ('e833045e-5791-47c0-8475-c5a92a2c6300','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Есть ли у тебя главное правило, которому ты следуешь по жизни?',null),
                             ('4cd9c7b9-4cbf-469d-fa9a-1197cafdac90','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Приходилось ли тебе врать в наших разговорах? Если да, то почему?',null),
                             ('85154553-139c-4041-ae25-239e9db9dc8a','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Если останется жить всего 1 день, какие будут твои действия?',null),
                             ('6edd9d0d-a887-4e62-b3f1-952959dc63e7','b467736b-ce84-4d67-ba96-8eed00e69bc4','Каким своим поступком ты действительно гордишься?',null),
                             ('ed2bbecc-a3a8-4ff7-bb7a-6897069c8e8b','9b2b10c2-7b5f-4840-a684-625fb90007a0','Как ты думаешь, что у вас общего с собеседником?',null),
                             ('ebbab717-43d6-4e13-c960-cc446ddec771','b467736b-ce84-4d67-ba96-8eed00e69bc4','Часто ли ты говоришь людям неприятную правду?',null),
                             ('a88f5eb0-c4bd-4ca0-9925-860b26eb9e1c','fe754eb8-8fb9-43f0-970b-c94a3a0691a8','Какой твой самый большой страх?',null),
                             ('91a41ccb-5c1c-49e2-e9aa-51ade33fed33','9b2b10c2-7b5f-4840-a684-625fb90007a0','Какое твое любимое место в городе?',null),
                             ('7d443df2-0d6d-460c-9a9e-eea4ac7ed3e4','b467736b-ce84-4d67-ba96-8eed00e69bc4','Есть ли у тебя лайвхаки для повышения продуктивности/качества жизни?',null);