<template>
  <section class="wrapper mx-auto bio">
    <p>
      Hi, I’m David Miotti, software enginneer passionate about Web and iOS development based in Bordeaux. I worked for great companies like
      <a class="small-link" href="https://spendesk.com">Spendesk</a>,
      <a class="small-link" href="https://payfit.com">PayFit</a>,
      <a class="small-link" href="https://todooist.com">Todoist</a>,
      <a class="small-link" href="https://twist.com">Twist</a>,
      <a class="small-link" href="https://getluko.com">Luko</a>,
      <a class="small-link" href="https://helloasso.com">HelloAsso</a>,
      <a class="small-link" href="https://fr.trace.tv/">Trace TV</a>
      to name a few.
    </p>

    <p>
      I love computer technologies and reading articles to improve myself as a developer. After I graduated, I worked on many projects of various sizes. I always want to learn new stuff and when I work I like to craft things with high attention to details.
    </p>

    <p>
      I like working on long term projects, creating modern development environments with planning and CI. I also enjoy managing teams of developers and designers.
    </p>

    <p>
      I love technologies and programming languages, this is why I know many other languages other than Swift. At the moment, I work on HTML/CSS/JS almost every day on Vue.js projects. I love Vue.js and <a class="small-link" href="https://medium.com/muxu-muxu/why-we-chose-vue-js-and-its-awesome-d4b4d97963b6" target="_blank">here is why</a>.
    </p>

    <p>
      You can find public apps and websites I have crafted in the
      <router-link class="small-link" to="projects">projects</router-link>
      section.
      I also made few projects on my own that I am happy to discuss about. 2 are live but only one is totally public.
      You can find it there: <a class="small-link" href="https://cactomain.co" target="_blank">Cactomain</a>.
    </p>

    <h2>
      Professional career
    </h2>

    <ul class="list-reset">
      <li v-for="job in jobs" :key="job.company" class="text-xl mb-10">
        <div class="mb-2 font-medium">
          <a class="small-link" :href="job.website" target="_blank">
            <strong>{{ job.company }}</strong>
          </a>

          ({{ job.location }}) – {{ job.date }}
        </div>
        <p>{{ job.desc }}</p>
        <div class="flex flex-wrap">
          <span v-for="tool in job.tools" :key="tool" class="rounded-full bg-indigo uppercase px-2 py-1 text-xs font-bold mr-3 mb-4">
            {{ tool }}
          </span>
        </div>
      </li>
    </ul>

    <h2>
      Education
    </h2>

    <ul class="list-reset">
      <li v-for="edu in educations" :key="edu.company" class="text-xl mb-10">
        <div class="mb-2">
          <a class="small-link" :href="edu.website" target="_blank">
            <strong>{{ edu.company }}</strong>
          </a>

          ({{ edu.location }}) – {{ edu.date }}
        </div>
        <p>{{ edu.desc }}</p>
        <div class="flex flex-wrap">
          <span v-for="tool in edu.tools" :key="tool" class="rounded-full bg-indigo uppercase px-2 py-1 text-xs font-bold mr-3 mb-4">
            {{ tool }}
          </span>
        </div>
      </li>
    </ul>

    <p class="mt-16">
      Feel free to <a href="mailto:david.miotti@protonmail.com" class="small-link">get in touch with me</a> for any other information.
    </p>

    <div class="picture">
      <img src="/cover.jpg" alt="">
      <p class="text-sm italic">
        This is a picture of me doing a Swift training to some of my friends. I love sharing my knowledge and help people grow their skills.
      </p>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      programingLanguages: ['JavaScript', 'Ruby', 'Swift'],
      tools: ['VSCode', 'XCode', 'git', 'Sketch', 'Abstract'],
      jobs: [
        {
          company: 'Muxu.Muxu',
          location: 'Bordeaux',
          website: 'https://muxumuxu.com',
          date: '2016-Present',
          tools: [
            'Docker',
            'VueJS',
            'SASS',
            'Jest',
            'Mocha',
            'GraphQL / Apollo',
            'Heroku / Netlify',
            'Cloudflare'
          ],
          desc:
            'I co-funded Muxu.Muxu with 3 partners. I manage a team of 3 developers and sync with our design team on a daily basis.'
        },
        {
          company: 'Wopata',
          location: 'Bordeaux',
          website: null,
          date: '2013-2016 (4.5 years)',
          tools: ['iOS', 'Cocoapods', 'Carthage', 'Bamboo CI'],
          desc:
            'When I left Tellmewhere, I was tired of Paris. I found a really nice agency in Bordeaux. In this adventure, I built dozens of iOS apps and have done 2 back-end projects.'
        },
        {
          company: 'Tellemewhere',
          location: 'Paris',
          website: 'https://dismoiou.fr',
          date: '2011-2012 (2 years)',
          tools: [
            'iOS',
            'Cocoapods',
            'Carthage',
            'XCTest',
            'CoreData',
            'Jenkins CI'
          ],
          desc: 'I worked on the iOS app of Tellmewhere (1M+ downloads).'
        }
      ],
      educations: [
        {
          company: 'SUPINFO',
          location: 'Paris/London',
          website: 'https://supinfo.com',
          date: '2008-2012',
          tools: ['C#', 'Oracle'],
          desc: 'Master’s degree in Computer Science.'
        },
        {
          company: 'DUT Informatique',
          location: 'Lille',
          website: 'http://www.iut-a.univ-lille.fr/dut-info/',
          date: '2005-2007',
          tools: ['JAVA', 'J2EE', 'Spring'],
          desc: 'Bachelor’s degree in Computer Science.'
        }
      ]
    }
  }
}
</script>

<style lang="scss" scoped>
.bio {
  p {
    @apply text-sm font-thin mb-4 text-2xl;
  }
}

.picture {
  p {
    @apply text-base mt-6;
  }
}

h2 {
  @apply text-2xl mb-8 mt-16;
}
</style>
