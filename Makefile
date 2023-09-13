----------------- install package ---------------- 
 this write in cargo.toml under [dependencies] 

axum = "0.6.12"
chrono = { version = "0.4.24", features = ["serde"] }
dotenv = "0.15.0"
serde = { version = "1.0.159", features = ["derive"] }
serde_json = "1.0.95"
sqlx = { version = "0.6.3", features = ["runtime-async-std-native-tls", "postgres", "chrono", "uuid"] }
tokio = { version = "1.27.0", features = ["full"] }
tower-http = { version = "0.4.0", features = ["cors"] }
uuid = { version = "1.3.0", features = ["serde", "v4"] }

then open terminal "cargo build"

------------------------run pj2-----------------------------

cargo watch -q -c -w src/ -x run

------------------------------------------------------------

create a file docker-compose.yml
create a file .env

-----------------create migrations------------------------------
i use window 

open cmd your command prompt install sqlx-cli :

cargo install sqlx-cli --locked --no-default-features --features postgres

then comeback project terminal 

sqlx migrate add -r init

----------------fix pgadmin4 -------------------
docker-compose up -d

check IPAddress : docker inspect postgres

then add new server on pgadmin4 

sqlx migrate run or sqlx migrate revert


