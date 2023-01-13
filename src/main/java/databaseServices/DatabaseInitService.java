package databaseServices;

public class DatabaseInitService {
    public static void main(String[] args) {
        SqlHelper.executeSqlFile("sql/init_db.sql");
    }

}
