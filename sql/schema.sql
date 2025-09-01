CREATE TABLE IF NOT EXISTS equipamentos (
  id    SERIAL PRIMARY KEY,
  nome  TEXT NOT NULL,
  local TEXT,
  meta  JSONB
);

CREATE TABLE IF NOT EXISTS sensores (
  id              SERIAL PRIMARY KEY,
  equipamento_id  INT  NOT NULL REFERENCES equipamentos(id) ON DELETE CASCADE,
  tipo            TEXT NOT NULL,
  unidade         TEXT,
  meta            JSONB
);

CREATE TABLE IF NOT EXISTS leituras (
  id          BIGSERIAL PRIMARY KEY,
  sensor_id   INT NOT NULL REFERENCES sensores(id) ON DELETE CASCADE,
  ts          TIMESTAMPTZ NOT NULL,
  temperatura DOUBLE PRECISION,
  vibracao    DOUBLE PRECISION,
  umidade     DOUBLE PRECISION,
  meta        JSONB,
  CONSTRAINT ck_temperatura CHECK (temperatura IS NULL OR (temperatura > -100 AND temperatura < 300)),
  CONSTRAINT ck_vibracao    CHECK (vibracao    IS NULL OR (vibracao >= 0)),
  CONSTRAINT ck_umidade     CHECK (umidade     IS NULL OR (umidade >= 0 AND umidade <= 100))
);

CREATE INDEX IF NOT EXISTS idx_leituras_sensor_ts ON leituras(sensor_id, ts);

CREATE TABLE IF NOT EXISTS predicoes (
  id          BIGSERIAL PRIMARY KEY,
  leitura_id  BIGINT NOT NULL REFERENCES leituras(id) ON DELETE CASCADE,
  modelo      TEXT   NOT NULL,
  resultado   TEXT   NOT NULL,
  score       DOUBLE PRECISION,
  extra       JSONB,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

