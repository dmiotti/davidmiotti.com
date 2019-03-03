<template>
  <section>
    <section class="container mx-auto bio">
      <p>Hi, I'm David, a regular 1x developer. I passoniated by web and iOS development. I worked for great companies like
        <a class="small-link" href="https://spendesk.com">Spendesk</a>,
        <a class="small-link" href="https://payfit.com">PayFit</a>,
        <a class="small-link" href="https://todooist.com">Todoist</a>,
        <a class="small-link" href="https://twist.com">Twist</a>,
        <a class="small-link" href="https://getluko.com">Luko</a>,
        <a class="small-link" href="https://helloasso.com">HelloAsso</a> and more.
      </p>

      <p>You can find public stuff I have crafted in the <router-link class="small-link" to="projects">projects</router-link> section.</p>

      <p>
        I love computer technologies and reading articles how to improve myself as a developer.
        From the end of school, I worked on many projects of various sizes.
        I always want to learn new stuff and when I work I like to craft things with a high attention to details.
      </p>

      <p>
        I like working on long terms projects, creating modern development environments with planning, CI and managing a team of developers and designers.
        I love technologies and programming languages, this is why I know much more languages than Swift. Nowadays, I'm doing some HTML/CSS/JS almost every work day.
      </p>

      <p>
        I also made few projects on my own I will be happy to discuss. 2 are alive but only one is totally public. You can find it there <a class="small-link no-underline" href="https://cactomain.co" target="_blank">Cactomain</a>.
      </p>

      <h2 class="text-2xl mb-6">Professional career</h2>

      <ul class="list-reset">
        <li v-for="job in jobs" :key="job.company" class="text-xl mb-3">
          <div class="mb-2">
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

      <p>If you want to know more about me, don't hesitate to <a href="mailto:david.miotti@protonmail.com" class="small-link">contact me</a>.</p>
    </section>

    <img src="/cover.jpg" alt="">
    <p class="text-base italic">*Me doing a Swift formation.</p>
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
          date: '2016-2019 (2 years)',
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
            'Co-funder of Muxu.Muxu with 3 associates. I managed a team of 3 developers and keep syncing with the design team/'
        },
        {
          company: 'Wopata',
          location: 'Bordeaux',
          website: null,
          date: '2013-2016 (4.5 years)',
          tools: ['iOS', 'Cocoapods', 'Carthage', 'Bamboo CI'],
          desc:
            'When I left Tellmewhere, I was tired of working in Paris. I found a really nice agency in Bordeaux. In this adventure I mainly built many iOS apps and have done 2 back-end projects.'
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
          desc: 'I was working on the iOS app of Tellmewhere'
        },
        {
          company: 'SUPINFO',
          location: 'Paris/London',
          website: 'https://supinfo.com',
          date: '2007-2012',
          tools: ['C#', 'Oracle'],
          desc: 'Learn programing + Team management'
        },
        {
          company: 'DUT Informatique',
          location: 'Lille',
          website: 'http://www.iut-a.univ-lille.fr/dut-info/',
          date: '2005-2007',
          tools: ['JAVA', 'J2EE', 'Spring'],
          desc: 'Learn programming'
        }
      ]
    }
  }
}
</script>

<style lang="scss" scoped>
.bio {
  p {
    @apply leading-normal mb-6 text-2xl;
  }
}
</style>
