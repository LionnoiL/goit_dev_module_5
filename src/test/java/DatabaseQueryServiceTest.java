import databaseServices.DatabaseQueryService;
import org.junit.jupiter.api.Test;
import selectSqlClasses.LongestProject;
import selectSqlClasses.MaxProjectCountClient;
import selectSqlClasses.MaxSalaryWorker;
import selectSqlClasses.YoungestEldestWorker;

import java.util.List;

class DatabaseQueryServiceTest {

    @Test
    void findMaxProjectsClient() {
        List<MaxProjectCountClient> maxProjectCountClients = new DatabaseQueryService().findMaxProjectsClient();
        System.out.println("maxProjectCountClients = " + maxProjectCountClients);
    }

    @Test
    void findLongestProject() {
        List<LongestProject> longestProjects = new DatabaseQueryService().findLongestProject();
        System.out.println("longestProjects = " + longestProjects);
    }

    @Test
    void findMaxSalaryWorkers() {
        List<MaxSalaryWorker> maxSalaryWorkers = new DatabaseQueryService().findMaxSalaryWorkers();
        System.out.println("maxSalaryWorkers = " + maxSalaryWorkers);
    }

    @Test
    void findYoungestEldestWorkers() {
        List<YoungestEldestWorker> youngestEldestWorkers = new DatabaseQueryService().findYoungestEldestWorkers();
        System.out.println("youngestEldestWorkers = " + youngestEldestWorkers);
    }

}