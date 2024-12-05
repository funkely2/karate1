import com.intuit.karate.junit5.Karate;

class RunnerTest {
    @Karate.Test
    Karate testSample() {
        return Karate.run("features/api-test").relativeTo(getClass()).tags("@Post");
    }
}
