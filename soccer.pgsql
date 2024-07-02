CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    teamname VARCHAR(3),
    city TEXT NOT NULL
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES teams,
    name TEXT NOT NULL,
    birthday TEXT NOT NULL
);

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players,
    game_id INTEGER REFERENCES games
);

CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    ref_name TEXT NOT NULL,
);

CREATE TABLE seasons (
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE
);

CREATE TABLE lineups (
    id SERIAL PRIMARY,
    player_id INTEGER REFERENCES players(id),
    game_id INTEGER REFERENCES games(id),
    team_id INTEGER REFERENCES teams(id)
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    team1 INTEGER REFERENCES teams(id),
    team2 INTEGER REFERENCES teams(id),
    location TEXT,
    date DATE,
    start_time FLOAT,
    season_id INTEGER REFERENCES seasons(id),
    head_ref_id INTEGER REFERENCES referees(id),
    assistant_ref_id INTEGER REFERENCES referees(id)
);