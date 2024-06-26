delete from questions where level_id in (select id from levels where deck_id = 'welcomeStrangerEn');
delete from levels where deck_id = 'welcomeStrangerEn';
delete from decks where id = 'welcomeStrangerEn';

INSERT INTO decks values ('welcomeStrangerEn', 'EN', 'Welcome... stranger?', '🇬🇧', 'For any strangers who want to get know each other!','good to start;party', 'b13759e3-0582-41f1-b882-89d1296f5e3c');

INSERT INTO levels (id, deck_id, level_order, name, emoji, color_start, color_end, color_button)
VALUES ('99841501-3ced-40e2-8565-f66327339ead', 'welcomeStrangerEn', 1, 'Dots', '🙂', '74,62,255', '219, 100,255', '164,119,105'),
       ('02e8df42-e210-41e4-be45-205dd2f8036a', 'welcomeStrangerEn', 2, 'Parallels', '😏', '254,141,63', '186,55,101', '105,123,164'),
       ('84360dea-a948-4726-b626-effbce066ee4', 'welcomeStrangerEn', 3, 'Figures', '😌', '26,59,153', '95,150,51', '121,156,128');

INSERT INTO questions
values ('d9869028-1abd-47ff-b534-9244dfc93b56', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I''m more of a morning person or a night owl?', null),
       ('ae3a5dee-993c-4e32-b8a6-ea50f1e93d00', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I prefer texting or calling?', null),
       ('f0765f74-116c-4812-a290-299f87687cc7', '99841501-3ced-40e2-8565-f66327339ead', 'What''s your guess about my favorite genre of music?', null),
       ('8b4ae633-237f-4108-a449-5c722818029d', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I enjoy cooking?', null),
       ('5e470740-d9b8-417c-a1d9-908f783d9f8d', '99841501-3ced-40e2-8565-f66327339ead', 'Can you guess if I''m into any team sports?', null),
       ('4f0e7659-3a28-4062-a774-16fb2d7d210b', '99841501-3ced-40e2-8565-f66327339ead', 'What do you think I value most in a friendship?', null),
       ('0294bd5e-5d4e-453a-beef-e271e81392af', '99841501-3ced-40e2-8565-f66327339ead', 'Can you guess my favorite type of book or literary genre?', null),
       ('92209968-22f6-4145-b8fd-a8d853eab866', '99841501-3ced-40e2-8565-f66327339ead', 'What''s your guess about my favorite type of vacation?', null),
       ('51c64dbd-984c-4ca4-88fc-559efba5c60d', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I''ve ever done something really adventurous or extreme?', null),
       ('54f89f42-5acb-4d48-af82-8f91a82c5390', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I''m good at keeping plants alive?', null),
       ('24f3c515-911f-49fe-9ca4-46d5f98755af', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I have a pet? What kind?', null),
       ('735ce0a7-1a40-48f3-b1f7-3531306d85fb', '99841501-3ced-40e2-8565-f66327339ead', 'Can you guess if I prefer tea or coffee?', null),
       ('6bf7fc76-542a-4215-bd72-4610442ca97d', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I''ve ever run a marathon?', null),
       ('20f4fa43-a9ea-4a39-a54a-a94f6fbb4091', '99841501-3ced-40e2-8565-f66327339ead', 'Can you guess if I''m into DIY projects?', null),
       ('13180173-9664-470c-baa7-693f16286ba3', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I have a favorite podcast or Youtube channel?', null),
       ('fa1df5cf-3c9e-459c-821e-099fdc57368c', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I prefer reading physical books or using an e-reader?', null),
       ('1b159ac0-67b2-4e25-b995-f45e63600c37', '99841501-3ced-40e2-8565-f66327339ead', 'Can you guess if I''ve ever lived in a different city or country for a long time?', null),
       ('57cbbdef-0696-4a69-9c53-ce01612a1294', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I''m more into history or science?', null),
       ('67175a0d-8bb0-4473-a625-58beb8217d21', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I have a signature dish that I''m great at cooking?', null),
       ('887d1067-e78a-4af0-a544-07ea5897fbca', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I follow any specific diet or food trend?', null),
       ('f3794fc0-59ab-4bfc-9b4c-bb059873e20b', '99841501-3ced-40e2-8565-f66327339ead', 'What''s your guess about my favorite way to relax?', null),
       ('a4af7478-ebaf-4fd5-98a7-bdf36836492d', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I have a favorite type of workout or exercise?', null),
       ('2349ecc1-9ef3-413d-9eb0-dd2228afa35e', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I play a musical instrument', null),
       ('0c6ec9da-c6e8-47ae-822c-a4ac13eb9f8b', '99841501-3ced-40e2-8565-f66327339ead', 'What unusual hobby do you think I might have?', null),
       ('afac02b5-299d-46bf-98c4-4ef79de6614d', '99841501-3ced-40e2-8565-f66327339ead', 'What do you think is my favorite time of the year?', null),
       ('71226f39-c6cf-45d5-95c8-44135065c9d0', '99841501-3ced-40e2-8565-f66327339ead', 'What do you think I''d do if I won the lottery?', null),
       ('6c823591-8cfd-4840-9b82-98f8c13afdea', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I''m interested in politics?', null),
       ('dbb358e5-99f4-4a86-ada9-26c4546e4849', '99841501-3ced-40e2-8565-f66327339ead', 'What''s your guess about my favorite form of social media?', null),
       ('a3de2159-4e26-444c-8c20-9a395b3db506', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I have a favorite author or book?', null),
       ('b8aed068-4b39-4ed4-9957-30b5c6164f14', '99841501-3ced-40e2-8565-f66327339ead', 'Can you guess if I prefer vintage or modern style in fashion and decor?', null),
       ('7f7bb365-27d5-42bb-b6c1-394700e38b94', '99841501-3ced-40e2-8565-f66327339ead', 'Do you think I''m good at solving puzzles or riddles?', null),
       ('c5eb6b31-1b33-4a69-9b2b-a914681f96ff', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s a book or movie that profoundly impacted your life?', null),
       ('e24d3f6f-946b-4798-a071-9e62abc29727', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What does your ideal day look like?', null),
       ('ebd81ec7-847e-48b6-94af-4eeabd1593a2', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you could live in any era, which would it be and why?', null),
       ('0c8da8af-8c09-4633-b647-04937ea3ae1e', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s the most valuable lesson a failure or mistake has taught you?', null),
       ('65411083-e7cd-4fcc-a070-f4abca703606', '02e8df42-e210-41e4-be45-205dd2f8036a', 'How do you define success in life?', null),
       ('e6eecde2-9f8c-423a-8c65-35c558bc756e', '02e8df42-e210-41e4-be45-205dd2f8036a', 'Do you think it is hard to get to know me? Why?', null),
       ('dc4dc7b5-d70b-4a42-9fcc-094842efc92e', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s a personal challenge you''re currently facing', null),
       ('6a23f165-b415-41a7-a7ff-bfb41c72ab21', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What is that one thing (or creature) that you would like to take care of?', null),
       ('02b436f8-786d-4b30-a012-364fab4f7a45', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What is the thing that you regret doing the most?', null),
       ('4d2130f5-2a2d-4c13-a6ee-5a221ab5be87', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you could know the absolute truth to one question, what question would you ask?', null),
       ('0e4342d9-53d8-4baa-969f-7093732a45b4', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s something you''re looking forward to in the next year?', null),
       ('d21a08c9-456b-4c1e-ad55-1a1e410ad0e6', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s something you''ve done that you''re really proud of', null),
       ('61c2d95c-73ca-46a9-a750-70788aa011b5', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If there would be just one last thing for you to live for, what would it be?', null),
       ('1c29a1df-ef36-48de-9a05-f7b1b934bfd1', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you could have dinner with any three people, dead or alive, who would they be?', null),
       ('208ace15-547f-46cc-8f86-2f0d3607fdef', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you could say one word to the entire world, what would it be?', null),
       ('ade70ee5-49e8-44b7-8422-5399d71d6de2', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s something you''ve always wanted to do but haven''t yet found the courage for?', null),
       ('c138572e-a7d6-4aed-94cf-7817de88b983', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s one thing you''re deeply thankful for but rarely express gratitude for?', null),
       ('c9ef0cf4-047a-4682-9c96-4ed4a0993421', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s the most memorable place you''ve ever visited?', null),
       ('3b56149c-42f1-4a70-b7b5-844475f6ba44', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you could relive one day of your life, which would it be and why?', null),
       ('c24a4723-9c66-494a-abbb-58cfc077adf2', '02e8df42-e210-41e4-be45-205dd2f8036a', 'Is there a dream you''ve given up on? If yes, why?', null),
       ('6bec70dc-d892-4071-b3b3-b9c690412be1', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s an unpopular opinion you have?', null),
       ('33991ea0-5540-4b37-bee2-06204a797f8f', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s the biggest risk you''ve ever taken?', null),
       ('345b8f54-5959-48ba-8982-234b5bb93515', '02e8df42-e210-41e4-be45-205dd2f8036a', 'Do you have a goal for the next decade?', null),
       ('6fba6e91-d701-4ea5-a6bf-126603d9bd66', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you could have one superpower, what would it be and why?', null),
       ('85fa6735-39ab-483f-88c5-fefa76977c9c', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s one piece of advice you''d give to your 10-year-old self?', null),
       ('b638357d-d5e9-4b79-a1a0-e538f921393a', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s something you believe that most people don''t?', null),
       ('c11d4395-957c-475d-a692-1088edfd735d', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you had the power to change one event in human history, what would it be?', null),
       ('5982c2f7-0e82-4974-8484-5ebfd2982675', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s a fear you''ve overcome, and how did you do it?', null),
       ('d4db94e5-fa77-4f43-9142-8cd0deb547ed', '02e8df42-e210-41e4-be45-205dd2f8036a', 'If you could switch lives with one person for a day, who would it be?', null),
       ('dbbb96a8-0657-4339-9ba9-47b00dc16d3c', '02e8df42-e210-41e4-be45-205dd2f8036a', 'What''s the most important thing you''ve learned about yourself in the last five years?', null),

       ('876105ee-1629-4bd5-9034-30138060d5de', '84360dea-a948-4726-b626-effbce066ee4', 'What is my strength in a crisis?', null),
       ('f25242c5-18ac-418d-ae6e-005bce27ac92', '84360dea-a948-4726-b626-effbce066ee4', 'How do you think I can improve my approach to challenges?', null),
       ('ba970b1f-b97b-493d-88bf-75a3c55decd4', '84360dea-a948-4726-b626-effbce066ee4', 'What''s a dream you think I should pursue?', null),
       ('15062c5d-8ec7-4acf-9c5a-b8ae53e4252e', '84360dea-a948-4726-b626-effbce066ee4', 'If you could wish one thing for me, what would it be?', null),
       ('8ce93a3e-fadd-4cf9-85be-9044620f08d8', '84360dea-a948-4726-b626-effbce066ee4', 'If we were to collaborate on a project, what do you think it should be about?', null),
       ('ff9af13a-802a-4641-903e-61a61a07c858', '84360dea-a948-4726-b626-effbce066ee4', 'What''s a challenge you believe I should take on?', null),
       ('4da6bb64-6aa6-487f-8e08-1b2d617af686', '84360dea-a948-4726-b626-effbce066ee4', 'How do you think I''ve influenced you the most?', null),
       ('267d311e-32b0-4c2d-ad4c-621dde949c8d', '84360dea-a948-4726-b626-effbce066ee4', 'What''s a habit of mine that you find intriguing or peculiar?', null),
       ('fdc3f660-481a-437b-b482-9251bb2ce00a', '84360dea-a948-4726-b626-effbce066ee4', 'How has our conversation impacted your view on friendships?', null),
       ('1bf3ae77-c57e-434a-a382-370a879a7504', '84360dea-a948-4726-b626-effbce066ee4', 'If you could wish one thing for me, what would it be?', null),
       ('c96ee782-477c-428f-8d5b-004bf2fe9bc0', '84360dea-a948-4726-b626-effbce066ee4', 'What is the trajectory you suggest I’m following wrong in life?', null),
       ('9f402de9-111f-45b5-8336-a0a8736ea8cf', '84360dea-a948-4726-b626-effbce066ee4', 'Was there a moment in our conversation that you would like to get back to? Why?', null),
       ('f4964a55-fa64-499a-8e4b-54771d0e5b2d', '84360dea-a948-4726-b626-effbce066ee4', 'What do you think is the most significant experience we share?', null),
       ('2020614b-785d-4403-bbca-33063c86e93e', '84360dea-a948-4726-b626-effbce066ee4', 'Do you think our conversation changed something inside of me?', null),
       ('9881a2aa-974a-40a8-a3eb-35c1251af551', '84360dea-a948-4726-b626-effbce066ee4', 'What''s one thing you''ve learned from me that surprised you?', null),
       ('3b75f51f-3faf-4f25-97c5-bc29e3030c9d', '84360dea-a948-4726-b626-effbce066ee4', 'What''s a life experience you think I should have?', null),
       ('d4c3b0c1-f337-4deb-8d4f-99a98f20f048', '84360dea-a948-4726-b626-effbce066ee4', 'If I were to write a song, what do you think it should be about?', null),
       ('bb70b791-03dc-4ab5-a94c-d7043359088b', '84360dea-a948-4726-b626-effbce066ee4', 'What''s a character trait of mine that you think is rare?', null),
       ('0a63418a-37d3-4395-81f1-55d830bfec90', '84360dea-a948-4726-b626-effbce066ee4', 'Do you believe there are any similarities or differences between us?', null),
       ('c18c1ec7-2182-4dec-ae0b-7c7d638c2e1a', '84360dea-a948-4726-b626-effbce066ee4', 'What did you learn about yourself during our talk?', null),
       ('830ed426-2800-44d2-877f-7d8b76637105', '84360dea-a948-4726-b626-effbce066ee4', 'What can I help you with?', null),
       ('37ec63b7-c0d6-4f9b-8ce4-44525bda6799', '84360dea-a948-4726-b626-effbce066ee4', 'Why do you think we met?', null),
       ('6bf61378-957f-4755-a9ca-04964ec3ca98', '84360dea-a948-4726-b626-effbce066ee4', 'How are you? ', null),
       ('1a3dd75a-cd5c-4eff-9089-51f784ac5a71', '84360dea-a948-4726-b626-effbce066ee4', 'Are you feeling better, compared with before our conversation?', null),
       ('a0567a8c-06b7-48e7-b3d0-2e2ff5c6c221', '84360dea-a948-4726-b626-effbce066ee4', 'What would you like to admit now?', null),
       ('368ad928-1553-4658-8915-cd6cb9d646ec', '84360dea-a948-4726-b626-effbce066ee4', 'How would you describe me to a person I’ve never met?', null),
       ('5788baa4-b5f0-4508-b3f7-6cb0c7977310', '84360dea-a948-4726-b626-effbce066ee4', 'Can you see a part of yourself in me?', null),
       ('0015f8ce-90a4-4346-ab20-cd6af428cc53', '84360dea-a948-4726-b626-effbce066ee4', 'What gift do you wish I could someday receive?', null),
       ('6f8c7833-30a0-42b8-a92b-575c1d3dba9f', '84360dea-a948-4726-b626-effbce066ee4', 'What is about me that you hardly understand?', null),
       ('99641edb-d845-4576-8208-f4afceb62e72', '84360dea-a948-4726-b626-effbce066ee4', 'What color represents my personality?', null);