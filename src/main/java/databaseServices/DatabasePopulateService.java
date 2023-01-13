package databaseServices;

public class DatabasePopulateService {
    public static void main(String[] args) {
        SqlHelper.executeSqlFile("sql/populate_db.sql");
    }

}
