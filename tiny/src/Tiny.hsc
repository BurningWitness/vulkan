{-# LANGUAGE CApiFFI
           , DataKinds
           , MagicHash
           , MultiParamTypeClasses
           , TypeApplications #-}

#include <vulkan/vulkan.h>

module Tiny where

import           Data.Int
import           Data.Word
import           GHC.Ptr



data VkInstance_T

type VkInstance = Ptr VkInstance_T

foreign import capi "vulkan/vulkan.h vkGetInstanceProcAddr"
  vkGetInstanceProcAddr :: VkInstance -> Ptr #{type char} -> IO (FunPtr a)



vkFunGetInstanceProcAddr :: Ptr #{type char}
vkFunGetInstanceProcAddr = Ptr "vkGetInstanceProcAddr\0"##



type VkResult = #{type int}

data VkDevice_T

type VkDevice = Ptr VkDevice_T

data VkFence_T

type VkFence = Ptr VkFence_T

type VkFenceCreateInfo = ()

type VkAllocationCallbacks = ()

foreign import capi "vulkan/vulkan.h vkCreateFence"
  vkCreateFence :: VkDevice -> Ptr VkFenceCreateInfo -> Ptr VkAllocationCallbacks -> Ptr VkFence -> IO VkResult


