<template>
  <div class="fixed w-full flex">
    <div class="hand" />
    <a class="github-link" href="https://github.com/dmiotti" target="_blank">
      <img width="35" src="/GitHub-Mark-Light-120px-plus.png" alt="My GitHub profile">
    </a>
  </div>
</template>

<script>
export default {}
</script>

<style lang="sass" scoped>
.hand
  // position: sticky
  // top: 50px
  width: 100%
  // margin-left: 50px
  font-size: 2rem

  &:after
    content: '🖐'

  &:hover
    &:after
      content: '👌'
</style>
