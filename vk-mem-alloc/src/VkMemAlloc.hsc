{-# LANGUAGE CApiFFI
           , CPP
           , DataKinds
           , DuplicateRecordFields
           , ForeignFunctionInterface
           , MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE PatternSynonyms
           , TypeApplications #-}

#include <vk_mem_alloc.h>

module VkMemAlloc where

import           Data.Int
import           Data.Word
import           Foreign.Ptr
import           Foreign.Storable
import           Foreign.Storable.Offset
import           GHC.Records
import           Vulkan.Core_1_3



type VmaAllocatorCreateFlagBits = #type enum VmaAllocatorCreateFlagBits

pattern VMA_ALLOCATOR_CREATE_EXTERNALLY_SYNCHRONIZED_BIT
      , VMA_ALLOCATOR_CREATE_KHR_DEDICATED_ALLOCATION_BIT
      , VMA_ALLOCATOR_CREATE_KHR_BIND_MEMORY2_BIT
      , VMA_ALLOCATOR_CREATE_EXT_MEMORY_BUDGET_BIT
      , VMA_ALLOCATOR_CREATE_AMD_DEVICE_COHERENT_MEMORY_BIT
      , VMA_ALLOCATOR_CREATE_BUFFER_DEVICE_ADDRESS_BIT
      , VMA_ALLOCATOR_CREATE_EXT_MEMORY_PRIORITY_BIT
      , VMA_ALLOCATOR_CREATE_FLAG_BITS_MAX_ENUM
     :: (Eq a, Num a) => a
pattern VMA_ALLOCATOR_CREATE_EXTERNALLY_SYNCHRONIZED_BIT    = #const VMA_ALLOCATOR_CREATE_EXTERNALLY_SYNCHRONIZED_BIT
pattern VMA_ALLOCATOR_CREATE_KHR_DEDICATED_ALLOCATION_BIT   = #const VMA_ALLOCATOR_CREATE_KHR_DEDICATED_ALLOCATION_BIT
pattern VMA_ALLOCATOR_CREATE_KHR_BIND_MEMORY2_BIT           = #const VMA_ALLOCATOR_CREATE_KHR_BIND_MEMORY2_BIT
pattern VMA_ALLOCATOR_CREATE_EXT_MEMORY_BUDGET_BIT          = #const VMA_ALLOCATOR_CREATE_EXT_MEMORY_BUDGET_BIT
pattern VMA_ALLOCATOR_CREATE_AMD_DEVICE_COHERENT_MEMORY_BIT = #const VMA_ALLOCATOR_CREATE_AMD_DEVICE_COHERENT_MEMORY_BIT
pattern VMA_ALLOCATOR_CREATE_BUFFER_DEVICE_ADDRESS_BIT      = #const VMA_ALLOCATOR_CREATE_BUFFER_DEVICE_ADDRESS_BIT
pattern VMA_ALLOCATOR_CREATE_EXT_MEMORY_PRIORITY_BIT        = #const VMA_ALLOCATOR_CREATE_EXT_MEMORY_PRIORITY_BIT
pattern VMA_ALLOCATOR_CREATE_FLAG_BITS_MAX_ENUM             = #const VMA_ALLOCATOR_CREATE_FLAG_BITS_MAX_ENUM



type VmaAllocatorCreateFlags = VkFlags



type VmaMemoryUsage = #type enum VmaMemoryUsage

pattern VMA_MEMORY_USAGE_UNKNOWN
      , VMA_MEMORY_USAGE_GPU_ONLY
      , VMA_MEMORY_USAGE_CPU_ONLY
      , VMA_MEMORY_USAGE_CPU_TO_GPU
      , VMA_MEMORY_USAGE_GPU_TO_CPU
      , VMA_MEMORY_USAGE_CPU_COPY
      , VMA_MEMORY_USAGE_GPU_LAZILY_ALLOCATED
      , VMA_MEMORY_USAGE_AUTO
      , VMA_MEMORY_USAGE_AUTO_PREFER_DEVICE
      , VMA_MEMORY_USAGE_AUTO_PREFER_HOST
      , VMA_MEMORY_USAGE_MAX_ENUM
     :: (Eq a, Num a) => a
pattern VMA_MEMORY_USAGE_UNKNOWN              = #const VMA_MEMORY_USAGE_UNKNOWN
pattern VMA_MEMORY_USAGE_GPU_ONLY             = #const VMA_MEMORY_USAGE_GPU_ONLY
pattern VMA_MEMORY_USAGE_CPU_ONLY             = #const VMA_MEMORY_USAGE_CPU_ONLY
pattern VMA_MEMORY_USAGE_CPU_TO_GPU           = #const VMA_MEMORY_USAGE_CPU_TO_GPU
pattern VMA_MEMORY_USAGE_GPU_TO_CPU           = #const VMA_MEMORY_USAGE_GPU_TO_CPU
pattern VMA_MEMORY_USAGE_CPU_COPY             = #const VMA_MEMORY_USAGE_CPU_COPY
pattern VMA_MEMORY_USAGE_GPU_LAZILY_ALLOCATED = #const VMA_MEMORY_USAGE_GPU_LAZILY_ALLOCATED
pattern VMA_MEMORY_USAGE_AUTO                 = #const VMA_MEMORY_USAGE_AUTO
pattern VMA_MEMORY_USAGE_AUTO_PREFER_DEVICE   = #const VMA_MEMORY_USAGE_AUTO_PREFER_DEVICE
pattern VMA_MEMORY_USAGE_AUTO_PREFER_HOST     = #const VMA_MEMORY_USAGE_AUTO_PREFER_HOST
pattern VMA_MEMORY_USAGE_MAX_ENUM             = #const VMA_MEMORY_USAGE_MAX_ENUM



type VmaAllocationCreateFlagBits = #type enum VmaAllocationCreateFlagBits

pattern VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT
      , VMA_ALLOCATION_CREATE_NEVER_ALLOCATE_BIT
      , VMA_ALLOCATION_CREATE_MAPPED_BIT
      , VMA_ALLOCATION_CREATE_USER_DATA_COPY_STRING_BIT
      , VMA_ALLOCATION_CREATE_UPPER_ADDRESS_BIT
      , VMA_ALLOCATION_CREATE_DONT_BIND_BIT
      , VMA_ALLOCATION_CREATE_WITHIN_BUDGET_BIT
      , VMA_ALLOCATION_CREATE_CAN_ALIAS_BIT
      , VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT
      , VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT
      , VMA_ALLOCATION_CREATE_HOST_ACCESS_ALLOW_TRANSFER_INSTEAD_BIT
      , VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT
      , VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT
      , VMA_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT
      , VMA_ALLOCATION_CREATE_STRATEGY_BEST_FIT_BIT
      , VMA_ALLOCATION_CREATE_STRATEGY_FIRST_FIT_BIT
      , VMA_ALLOCATION_CREATE_STRATEGY_MASK
      , VMA_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM
     :: (Eq a, Num a) => a
pattern VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT                   = #const VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT
pattern VMA_ALLOCATION_CREATE_NEVER_ALLOCATE_BIT                     = #const VMA_ALLOCATION_CREATE_NEVER_ALLOCATE_BIT
pattern VMA_ALLOCATION_CREATE_MAPPED_BIT                             = #const VMA_ALLOCATION_CREATE_MAPPED_BIT
pattern VMA_ALLOCATION_CREATE_USER_DATA_COPY_STRING_BIT              = #const VMA_ALLOCATION_CREATE_USER_DATA_COPY_STRING_BIT
pattern VMA_ALLOCATION_CREATE_UPPER_ADDRESS_BIT                      = #const VMA_ALLOCATION_CREATE_UPPER_ADDRESS_BIT
pattern VMA_ALLOCATION_CREATE_DONT_BIND_BIT                          = #const VMA_ALLOCATION_CREATE_DONT_BIND_BIT
pattern VMA_ALLOCATION_CREATE_WITHIN_BUDGET_BIT                      = #const VMA_ALLOCATION_CREATE_WITHIN_BUDGET_BIT
pattern VMA_ALLOCATION_CREATE_CAN_ALIAS_BIT                          = #const VMA_ALLOCATION_CREATE_CAN_ALIAS_BIT
pattern VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT       = #const VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT
pattern VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT                 = #const VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT
pattern VMA_ALLOCATION_CREATE_HOST_ACCESS_ALLOW_TRANSFER_INSTEAD_BIT = #const VMA_ALLOCATION_CREATE_HOST_ACCESS_ALLOW_TRANSFER_INSTEAD_BIT
pattern VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT                = #const VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT
pattern VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT                  = #const VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT
pattern VMA_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT                = #const VMA_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT
pattern VMA_ALLOCATION_CREATE_STRATEGY_BEST_FIT_BIT                  = #const VMA_ALLOCATION_CREATE_STRATEGY_BEST_FIT_BIT
pattern VMA_ALLOCATION_CREATE_STRATEGY_FIRST_FIT_BIT                 = #const VMA_ALLOCATION_CREATE_STRATEGY_FIRST_FIT_BIT
pattern VMA_ALLOCATION_CREATE_STRATEGY_MASK                          = #const VMA_ALLOCATION_CREATE_STRATEGY_MASK
pattern VMA_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM                     = #const VMA_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM



type VmaAllocationCreateFlags = VkFlags



type VmaPoolCreateFlagBits = #type enum VmaPoolCreateFlagBits

pattern VMA_POOL_CREATE_IGNORE_BUFFER_IMAGE_GRANULARITY_BIT
      , VMA_POOL_CREATE_LINEAR_ALGORITHM_BIT
      , VMA_POOL_CREATE_ALGORITHM_MASK
      , VMA_POOL_CREATE_FLAG_BITS_MAX_ENUM
     :: (Eq a, Num a) => a
pattern VMA_POOL_CREATE_IGNORE_BUFFER_IMAGE_GRANULARITY_BIT = #const VMA_POOL_CREATE_IGNORE_BUFFER_IMAGE_GRANULARITY_BIT
pattern VMA_POOL_CREATE_LINEAR_ALGORITHM_BIT                = #const VMA_POOL_CREATE_LINEAR_ALGORITHM_BIT
pattern VMA_POOL_CREATE_ALGORITHM_MASK                      = #const VMA_POOL_CREATE_ALGORITHM_MASK
pattern VMA_POOL_CREATE_FLAG_BITS_MAX_ENUM                  = #const VMA_POOL_CREATE_FLAG_BITS_MAX_ENUM



type VmaPoolCreateFlags = VkFlags




type VmaDefragmentationFlagBits = #type enum VmaDefragmentationFlagBits


pattern VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FAST_BIT
      , VMA_DEFRAGMENTATION_FLAG_ALGORITHM_BALANCED_BIT
      , VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FULL_BIT
      , VMA_DEFRAGMENTATION_FLAG_ALGORITHM_EXTENSIVE_BIT
      , VMA_DEFRAGMENTATION_FLAG_ALGORITHM_MASK
      , VMA_DEFRAGMENTATION_FLAG_BITS_MAX_ENUM
     :: (Eq a, Num a) => a
pattern VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FAST_BIT      = #const VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FAST_BIT
pattern VMA_DEFRAGMENTATION_FLAG_ALGORITHM_BALANCED_BIT  = #const VMA_DEFRAGMENTATION_FLAG_ALGORITHM_BALANCED_BIT
pattern VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FULL_BIT      = #const VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FULL_BIT
pattern VMA_DEFRAGMENTATION_FLAG_ALGORITHM_EXTENSIVE_BIT = #const VMA_DEFRAGMENTATION_FLAG_ALGORITHM_EXTENSIVE_BIT
pattern VMA_DEFRAGMENTATION_FLAG_ALGORITHM_MASK          = #const VMA_DEFRAGMENTATION_FLAG_ALGORITHM_MASK
pattern VMA_DEFRAGMENTATION_FLAG_BITS_MAX_ENUM           = #const VMA_DEFRAGMENTATION_FLAG_BITS_MAX_ENUM



type VmaDefragmentationFlags = VkFlags



type VmaDefragmentationMoveOperation = #type enum VmaDefragmentationMoveOperation

pattern VMA_DEFRAGMENTATION_MOVE_OPERATION_COPY
      , VMA_DEFRAGMENTATION_MOVE_OPERATION_IGNORE
      , VMA_DEFRAGMENTATION_MOVE_OPERATION_DESTROY
     :: (Eq a, Num a) => a
pattern VMA_DEFRAGMENTATION_MOVE_OPERATION_COPY    = #const VMA_DEFRAGMENTATION_MOVE_OPERATION_COPY
pattern VMA_DEFRAGMENTATION_MOVE_OPERATION_IGNORE  = #const VMA_DEFRAGMENTATION_MOVE_OPERATION_IGNORE
pattern VMA_DEFRAGMENTATION_MOVE_OPERATION_DESTROY = #const VMA_DEFRAGMENTATION_MOVE_OPERATION_DESTROY



type VmaVirtualBlockCreateFlagBits = #type enum VmaVirtualBlockCreateFlagBits

pattern VMA_VIRTUAL_BLOCK_CREATE_LINEAR_ALGORITHM_BIT
      , VMA_VIRTUAL_BLOCK_CREATE_ALGORITHM_MASK
      , VMA_VIRTUAL_BLOCK_CREATE_FLAG_BITS_MAX_ENUM
     :: (Eq a, Num a) => a
pattern VMA_VIRTUAL_BLOCK_CREATE_LINEAR_ALGORITHM_BIT = #const VMA_VIRTUAL_BLOCK_CREATE_LINEAR_ALGORITHM_BIT
pattern VMA_VIRTUAL_BLOCK_CREATE_ALGORITHM_MASK       = #const VMA_VIRTUAL_BLOCK_CREATE_ALGORITHM_MASK
pattern VMA_VIRTUAL_BLOCK_CREATE_FLAG_BITS_MAX_ENUM   = #const VMA_VIRTUAL_BLOCK_CREATE_FLAG_BITS_MAX_ENUM



type VmaVirtualBlockCreateFlags = VkFlags



type VmaVirtualAllocationCreateFlagBits = #type enum VmaVirtualAllocationCreateFlagBits

pattern VMA_VIRTUAL_ALLOCATION_CREATE_UPPER_ADDRESS_BIT
      , VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT
      , VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT
      , VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT
      , VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MASK
      , VMA_VIRTUAL_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM
     :: (Eq a, Num a) => a
pattern VMA_VIRTUAL_ALLOCATION_CREATE_UPPER_ADDRESS_BIT       = #const VMA_VIRTUAL_ALLOCATION_CREATE_UPPER_ADDRESS_BIT
pattern VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT = #const VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT
pattern VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT   = #const VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT
pattern VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT = #const VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT
pattern VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MASK           = #const VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MASK
pattern VMA_VIRTUAL_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM      = #const VMA_VIRTUAL_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM



type VmaVirtualAllocationCreateFlags = VkFlags



data {-# CTYPE "vk_mem_alloc.h" "struct VmaAllocator_T" #-} VmaAllocator_T

type VmaAllocator = Ptr VmaAllocator_T

data {-# CTYPE "vk_mem_alloc.h" "struct VmaPool_T" #-} VmaPool_T

type VmaPool = Ptr VmaPool_T

data {-# CTYPE "vk_mem_alloc.h" "struct VmaAllocation_T" #-} VmaAllocation_T

type VmaAllocation = Ptr VmaAllocation_T

data {-# CTYPE "vk_mem_alloc.h" "struct VmaDefragmentationContext_T" #-} VmaDefragmentationContext_T

type VmaDefragmentationContext = Ptr VmaDefragmentationContext_T

data {-# CTYPE "vk_mem_alloc.h" "struct VmaVirtualAllocation_T" #-} VmaVirtualAllocation_T

type VmaVirtualAllocation = Ptr VmaVirtualAllocation_T

data {-# CTYPE "vk_mem_alloc.h" "struct VmaVirtualBlock_T" #-} VmaVirtualBlock_T

type VmaVirtualBlock = Ptr VmaVirtualBlock_T



type PFN_vmaAllocateDeviceMemoryFunction =
          VmaAllocator     -- ^ allocator
       -> #{type uint32_t} -- ^ memoryType
       -> VkDeviceMemory   -- ^ memory
       -> VkDeviceSize     -- ^ size
       -> Ptr ()           -- ^ pUserData
       -> IO ()

type PFN_vmaFreeDeviceMemoryFunction =
          VmaAllocator     -- ^ allocator
       -> #{type uint32_t} -- ^ memoryType
       -> VkDeviceMemory   -- ^ memory
       -> VkDeviceSize     -- ^ size
       -> Ptr ()           -- ^ pUserData
       -> IO ()



data {-# CTYPE "vk_mem_alloc.h" "VmaDeviceMemoryCallbacks" #-} VmaDeviceMemoryCallbacks =
       VmaDeviceMemoryCallbacks
         { pfnAllocate :: FunPtr PFN_vmaAllocateDeviceMemoryFunction
         , pfnFree     :: FunPtr PFN_vmaFreeDeviceMemoryFunction
         , pUserData   :: Ptr ()
         }

instance Offset "pfnAllocate" VmaDeviceMemoryCallbacks where rawOffset = #offset struct VmaDeviceMemoryCallbacks, pfnAllocate
instance Offset "pfnFree"     VmaDeviceMemoryCallbacks where rawOffset = #offset struct VmaDeviceMemoryCallbacks, pfnFree
instance Offset "pUserData"   VmaDeviceMemoryCallbacks where rawOffset = #offset struct VmaDeviceMemoryCallbacks, pUserData

instance Storable VmaDeviceMemoryCallbacks where
  sizeOf _    = #size      struct VmaDeviceMemoryCallbacks
  alignment _ = #alignment struct VmaDeviceMemoryCallbacks

  peek ptr =
    VmaDeviceMemoryCallbacks
      <$> peek (offset @"pfnAllocate" ptr)
      <*> peek (offset @"pfnFree"     ptr)
      <*> peek (offset @"pUserData"   ptr)

  poke ptr val = do
    pokeField @"pfnAllocate" ptr val
    pokeField @"pfnFree"     ptr val
    pokeField @"pUserData"   ptr val




data {-# CTYPE "vk_mem_alloc.h" "VmaVulkanFunctions" #-} VmaVulkanFunctions =
       VmaVulkanFunctions
         { vkGetInstanceProcAddr                   :: FunPtr VkGetInstanceProcAddr
         , vkGetDeviceProcAddr                     :: FunPtr VkGetDeviceProcAddr
         , vkGetPhysicalDeviceProperties           :: FunPtr VkGetPhysicalDeviceProperties
         , vkGetPhysicalDeviceMemoryProperties     :: FunPtr VkGetPhysicalDeviceMemoryProperties
         , vkAllocateMemory                        :: FunPtr VkAllocateMemory
         , vkFreeMemory                            :: FunPtr VkFreeMemory
         , vkMapMemory                             :: FunPtr VkMapMemory
         , vkUnmapMemory                           :: FunPtr VkUnmapMemory
         , vkFlushMappedMemoryRanges               :: FunPtr VkFlushMappedMemoryRanges
         , vkInvalidateMappedMemoryRanges          :: FunPtr VkInvalidateMappedMemoryRanges
         , vkBindBufferMemory                      :: FunPtr VkBindBufferMemory
         , vkBindImageMemory                       :: FunPtr VkBindImageMemory
         , vkGetBufferMemoryRequirements           :: FunPtr VkGetBufferMemoryRequirements
         , vkGetImageMemoryRequirements            :: FunPtr VkGetImageMemoryRequirements
         , vkCreateBuffer                          :: FunPtr VkCreateBuffer
         , vkDestroyBuffer                         :: FunPtr VkDestroyBuffer
         , vkCreateImage                           :: FunPtr VkCreateImage
         , vkDestroyImage                          :: FunPtr VkDestroyImage
         , vkCmdCopyBuffer                         :: FunPtr VkCmdCopyBuffer
#if VMA_DEDICATED_ALLOCATION || VMA_VULKAN_VERSION >= 1001000
         , vkGetBufferMemoryRequirements2KHR       :: FunPtr VkGetBufferMemoryRequirements2
         , vkGetImageMemoryRequirements2KHR        :: FunPtr VkGetImageMemoryRequirements2
#endif
#if VMA_BIND_MEMORY2 || VMA_VULKAN_VERSION >= 1001000
         , vkBindBufferMemory2KHR                  :: FunPtr VkBindBufferMemory2
         , vkBindImageMemory2KHR                   :: FunPtr VkBindImageMemory2
#endif
#if VMA_MEMORY_BUDGET || VMA_VULKAN_VERSION >= 1001000
         , vkGetPhysicalDeviceMemoryProperties2KHR :: FunPtr VkGetPhysicalDeviceMemoryProperties2
#endif
#if VMA_VULKAN_VERSION >= 1003000
         , vkGetDeviceBufferMemoryRequirements     :: FunPtr VkGetDeviceBufferMemoryRequirements
         , vkGetDeviceImageMemoryRequirements      :: FunPtr VkGetDeviceImageMemoryRequirements
#endif
         }

instance Offset "vkGetInstanceProcAddr"                   VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetInstanceProcAddr
instance Offset "vkGetDeviceProcAddr"                     VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetDeviceProcAddr
instance Offset "vkGetPhysicalDeviceProperties"           VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetPhysicalDeviceProperties
instance Offset "vkGetPhysicalDeviceMemoryProperties"     VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetPhysicalDeviceMemoryProperties
instance Offset "vkAllocateMemory"                        VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkAllocateMemory
instance Offset "vkFreeMemory"                            VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkFreeMemory
instance Offset "vkMapMemory"                             VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkMapMemory
instance Offset "vkUnmapMemory"                           VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkUnmapMemory
instance Offset "vkFlushMappedMemoryRanges"               VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkFlushMappedMemoryRanges
instance Offset "vkInvalidateMappedMemoryRanges"          VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkInvalidateMappedMemoryRanges
instance Offset "vkBindBufferMemory"                      VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkBindBufferMemory
instance Offset "vkBindImageMemory"                       VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkBindImageMemory
instance Offset "vkGetBufferMemoryRequirements"           VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetBufferMemoryRequirements
instance Offset "vkGetImageMemoryRequirements"            VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetImageMemoryRequirements
instance Offset "vkCreateBuffer"                          VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkCreateBuffer
instance Offset "vkDestroyBuffer"                         VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkDestroyBuffer
instance Offset "vkCreateImage"                           VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkCreateImage
instance Offset "vkDestroyImage"                          VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkDestroyImage
instance Offset "vkCmdCopyBuffer"                         VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkCmdCopyBuffer
#if VMA_DEDICATED_ALLOCATION || VMA_VULKAN_VERSION >= 1001000
instance Offset "vkGetBufferMemoryRequirements2KHR"       VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetBufferMemoryRequirements2KHR
instance Offset "vkGetImageMemoryRequirements2KHR"        VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetImageMemoryRequirements2KHR
#endif
#if VMA_BIND_MEMORY2 || VMA_VULKAN_VERSION >= 1001000
instance Offset "vkBindBufferMemory2KHR"                  VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkBindBufferMemory2KHR
instance Offset "vkBindImageMemory2KHR"                   VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkBindImageMemory2KHR
#endif
#if VMA_MEMORY_BUDGET || VMA_VULKAN_VERSION >= 1001000
instance Offset "vkGetPhysicalDeviceMemoryProperties2KHR" VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetPhysicalDeviceMemoryProperties2KHR
#endif
#if VMA_VULKAN_VERSION >= 1003000
instance Offset "vkGetDeviceBufferMemoryRequirements"     VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetDeviceBufferMemoryRequirements
instance Offset "vkGetDeviceImageMemoryRequirements"      VmaVulkanFunctions where rawOffset = #offset struct VmaVulkanFunctions, vkGetDeviceImageMemoryRequirements
#endif

instance Storable VmaVulkanFunctions where
  sizeOf _    = #size      struct VmaVulkanFunctions
  alignment _ = #alignment struct VmaVulkanFunctions

  peek ptr =
    VmaVulkanFunctions
      <$> peek (offset @"vkGetInstanceProcAddr"                   ptr)
      <*> peek (offset @"vkGetDeviceProcAddr"                     ptr)
      <*> peek (offset @"vkGetPhysicalDeviceProperties"           ptr)
      <*> peek (offset @"vkGetPhysicalDeviceMemoryProperties"     ptr)
      <*> peek (offset @"vkAllocateMemory"                        ptr)
      <*> peek (offset @"vkFreeMemory"                            ptr)
      <*> peek (offset @"vkMapMemory"                             ptr)
      <*> peek (offset @"vkUnmapMemory"                           ptr)
      <*> peek (offset @"vkFlushMappedMemoryRanges"               ptr)
      <*> peek (offset @"vkInvalidateMappedMemoryRanges"          ptr)
      <*> peek (offset @"vkBindBufferMemory"                      ptr)
      <*> peek (offset @"vkBindImageMemory"                       ptr)
      <*> peek (offset @"vkGetBufferMemoryRequirements"           ptr)
      <*> peek (offset @"vkGetImageMemoryRequirements"            ptr)
      <*> peek (offset @"vkCreateBuffer"                          ptr)
      <*> peek (offset @"vkDestroyBuffer"                         ptr)
      <*> peek (offset @"vkCreateImage"                           ptr)
      <*> peek (offset @"vkDestroyImage"                          ptr)
      <*> peek (offset @"vkCmdCopyBuffer"                         ptr)
      <*> peek (offset @"vkGetBufferMemoryRequirements2KHR"       ptr)
      <*> peek (offset @"vkGetImageMemoryRequirements2KHR"        ptr)
      <*> peek (offset @"vkBindBufferMemory2KHR"                  ptr)
      <*> peek (offset @"vkBindImageMemory2KHR"                   ptr)
      <*> peek (offset @"vkGetPhysicalDeviceMemoryProperties2KHR" ptr)
      <*> peek (offset @"vkGetDeviceBufferMemoryRequirements"     ptr)
      <*> peek (offset @"vkGetDeviceImageMemoryRequirements"      ptr)

  poke ptr val = do
    pokeField @"vkGetInstanceProcAddr"                   ptr val
    pokeField @"vkGetDeviceProcAddr"                     ptr val
    pokeField @"vkGetPhysicalDeviceProperties"           ptr val
    pokeField @"vkGetPhysicalDeviceMemoryProperties"     ptr val
    pokeField @"vkAllocateMemory"                        ptr val
    pokeField @"vkFreeMemory"                            ptr val
    pokeField @"vkMapMemory"                             ptr val
    pokeField @"vkUnmapMemory"                           ptr val
    pokeField @"vkFlushMappedMemoryRanges"               ptr val
    pokeField @"vkInvalidateMappedMemoryRanges"          ptr val
    pokeField @"vkBindBufferMemory"                      ptr val
    pokeField @"vkBindImageMemory"                       ptr val
    pokeField @"vkGetBufferMemoryRequirements"           ptr val
    pokeField @"vkGetImageMemoryRequirements"            ptr val
    pokeField @"vkCreateBuffer"                          ptr val
    pokeField @"vkDestroyBuffer"                         ptr val
    pokeField @"vkCreateImage"                           ptr val
    pokeField @"vkDestroyImage"                          ptr val
    pokeField @"vkCmdCopyBuffer"                         ptr val
    pokeField @"vkGetBufferMemoryRequirements2KHR"       ptr val
    pokeField @"vkGetImageMemoryRequirements2KHR"        ptr val
    pokeField @"vkBindBufferMemory2KHR"                  ptr val
    pokeField @"vkBindImageMemory2KHR"                   ptr val
    pokeField @"vkGetPhysicalDeviceMemoryProperties2KHR" ptr val
    pokeField @"vkGetDeviceBufferMemoryRequirements"     ptr val
    pokeField @"vkGetDeviceImageMemoryRequirements"      ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaAllocatorCreateInfo" #-} VmaAllocatorCreateInfo =
       VmaAllocatorCreateInfo
         { flags                          :: VmaAllocatorCreateFlags
         , physicalDevice                 :: VkPhysicalDevice
         , device                         :: VkDevice
         , preferredLargeHeapBlockSize    :: VkDeviceSize
         , pAllocationCallbacks           :: Ptr VkAllocationCallbacks
         , pDeviceMemoryCallbacks         :: Ptr VmaDeviceMemoryCallbacks
         , pHeapSizeLimit                 :: Ptr VkDeviceSize
         , pVulkanFunctions               :: Ptr VmaVulkanFunctions
         , instance_                      :: VkInstance
         , vulkanApiVersion               :: #type uint32_t
         , pTypeExternalMemoryHandleTypes :: Ptr VkExternalMemoryHandleTypeFlags
         }

instance Offset "flags"                          VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, flags
instance Offset "physicalDevice"                 VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, physicalDevice
instance Offset "device"                         VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, device
instance Offset "preferredLargeHeapBlockSize"    VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, preferredLargeHeapBlockSize
instance Offset "pAllocationCallbacks"           VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, pAllocationCallbacks
instance Offset "pDeviceMemoryCallbacks"         VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, pDeviceMemoryCallbacks
instance Offset "pHeapSizeLimit"                 VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, pHeapSizeLimit
instance Offset "pVulkanFunctions"               VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, pVulkanFunctions
instance Offset "instance_"                      VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, instance
instance Offset "vulkanApiVersion"               VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, vulkanApiVersion
instance Offset "pTypeExternalMemoryHandleTypes" VmaAllocatorCreateInfo where rawOffset = #offset struct VmaAllocatorCreateInfo, pTypeExternalMemoryHandleTypes

instance Offset "instance" VmaAllocatorCreateInfo where
  rawOffset = rawOffset @"instance_" @VmaAllocatorCreateInfo

instance HasField "instance" VmaAllocatorCreateInfo VkInstance where
  getField = getField @"instance_"

instance Storable VmaAllocatorCreateInfo where
  sizeOf _    = #size      struct VmaAllocatorCreateInfo
  alignment _ = #alignment struct VmaAllocatorCreateInfo

  peek ptr =
    VmaAllocatorCreateInfo
      <$> peek (offset @"flags"                          ptr)
      <*> peek (offset @"physicalDevice"                 ptr)
      <*> peek (offset @"device"                         ptr)
      <*> peek (offset @"preferredLargeHeapBlockSize"    ptr)
      <*> peek (offset @"pAllocationCallbacks"           ptr)
      <*> peek (offset @"pDeviceMemoryCallbacks"         ptr)
      <*> peek (offset @"pHeapSizeLimit"                 ptr)
      <*> peek (offset @"pVulkanFunctions"               ptr)
      <*> peek (offset @"instance"                       ptr)
      <*> peek (offset @"vulkanApiVersion"               ptr)
      <*> peek (offset @"pTypeExternalMemoryHandleTypes" ptr)

  poke ptr val = do
    pokeField @"flags"                          ptr val
    pokeField @"physicalDevice"                 ptr val
    pokeField @"device"                         ptr val
    pokeField @"preferredLargeHeapBlockSize"    ptr val
    pokeField @"pAllocationCallbacks"           ptr val
    pokeField @"pDeviceMemoryCallbacks"         ptr val
    pokeField @"pHeapSizeLimit"                 ptr val
    pokeField @"pVulkanFunctions"               ptr val
    pokeField @"instance"                       ptr val
    pokeField @"vulkanApiVersion"               ptr val
    pokeField @"pTypeExternalMemoryHandleTypes" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaAllocatorInfo" #-} VmaAllocatorInfo =
       VmaAllocatorInfo
         { instance_      :: VkInstance
         , physicalDevice :: VkPhysicalDevice
         , device         :: VkDevice
         }

instance Offset "instance_"      VmaAllocatorInfo where rawOffset = #offset struct VmaAllocatorInfo, instance
instance Offset "physicalDevice" VmaAllocatorInfo where rawOffset = #offset struct VmaAllocatorInfo, physicalDevice
instance Offset "device"         VmaAllocatorInfo where rawOffset = #offset struct VmaAllocatorInfo, device

instance Offset "instance" VmaAllocatorInfo where
  rawOffset = rawOffset @"instance_" @VmaAllocatorInfo

instance HasField "instance" VmaAllocatorInfo VkInstance where
  getField = getField @"instance_"

instance Storable VmaAllocatorInfo where
  sizeOf _    = #size      struct VmaAllocatorInfo
  alignment _ = #alignment struct VmaAllocatorInfo

  peek ptr =
    VmaAllocatorInfo
      <$> peek (offset @"instance"       ptr)
      <*> peek (offset @"physicalDevice" ptr)
      <*> peek (offset @"device"         ptr)

  poke ptr val = do
    pokeField @"instance"       ptr val
    pokeField @"physicalDevice" ptr val
    pokeField @"device"         ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaStatistics" #-} VmaStatistics =
       VmaStatistics
         { blockCount      :: #type uint32_t
         , allocationCount :: #type uint32_t
         , blockBytes      :: VkDeviceSize
         , allocationBytes :: VkDeviceSize
         }

instance Offset "blockCount"      VmaStatistics where rawOffset = #offset struct VmaStatistics, blockCount
instance Offset "allocationCount" VmaStatistics where rawOffset = #offset struct VmaStatistics, allocationCount
instance Offset "blockBytes"      VmaStatistics where rawOffset = #offset struct VmaStatistics, blockBytes
instance Offset "allocationBytes" VmaStatistics where rawOffset = #offset struct VmaStatistics, allocationBytes

instance Storable VmaStatistics where
  sizeOf _    = #size      struct VmaStatistics
  alignment _ = #alignment struct VmaStatistics

  peek ptr =
    VmaStatistics
      <$> peek (offset @"blockCount"      ptr)
      <*> peek (offset @"allocationCount" ptr)
      <*> peek (offset @"blockBytes"      ptr)
      <*> peek (offset @"allocationBytes" ptr)

  poke ptr val = do
    pokeField @"blockCount"      ptr val
    pokeField @"allocationCount" ptr val
    pokeField @"blockBytes"      ptr val
    pokeField @"allocationBytes" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaDetailedStatistics" #-} VmaDetailedStatistics =
       VmaDetailedStatistics
         { statistics         :: VmaStatistics
         , unusedRangeCount   :: #type uint32_t
         , allocationSizeMin  :: VkDeviceSize
         , allocationSizeMax  :: VkDeviceSize
         , unusedRangeSizeMin :: VkDeviceSize
         , unusedRangeSizeMax :: VkDeviceSize
         }

instance Offset "statistics"          VmaDetailedStatistics where rawOffset = #offset struct VmaDetailedStatistics, statistics
instance Offset "unusedRangeCount"    VmaDetailedStatistics where rawOffset = #offset struct VmaDetailedStatistics, unusedRangeCount
instance Offset "allocationSizeMin"   VmaDetailedStatistics where rawOffset = #offset struct VmaDetailedStatistics, allocationSizeMin
instance Offset "allocationSizeMax"   VmaDetailedStatistics where rawOffset = #offset struct VmaDetailedStatistics, allocationSizeMax
instance Offset "unusedRangeSizeMin"  VmaDetailedStatistics where rawOffset = #offset struct VmaDetailedStatistics, unusedRangeSizeMin
instance Offset "unusedRangeSizeMax"  VmaDetailedStatistics where rawOffset = #offset struct VmaDetailedStatistics, unusedRangeSizeMax

instance Storable VmaDetailedStatistics where
  sizeOf _    = #size      struct VmaDetailedStatistics
  alignment _ = #alignment struct VmaDetailedStatistics

  peek ptr =
    VmaDetailedStatistics
      <$> peek (offset @"statistics"         ptr)
      <*> peek (offset @"unusedRangeCount"   ptr)
      <*> peek (offset @"allocationSizeMin"  ptr)
      <*> peek (offset @"allocationSizeMax"  ptr)
      <*> peek (offset @"unusedRangeSizeMin" ptr)
      <*> peek (offset @"unusedRangeSizeMax" ptr)

  poke ptr val = do
    pokeField @"statistics"         ptr val
    pokeField @"unusedRangeCount"   ptr val
    pokeField @"allocationSizeMin"  ptr val
    pokeField @"allocationSizeMax"  ptr val
    pokeField @"unusedRangeSizeMin" ptr val
    pokeField @"unusedRangeSizeMax" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaTotalStatistics" #-} VmaTotalStatistics =
       VmaTotalStatistics
         { memoryType :: VmaDetailedStatistics
         , memoryHeap :: VmaDetailedStatistics
         , total      :: VmaDetailedStatistics
         }

instance Offset "memoryType" VmaTotalStatistics where rawOffset = #offset struct VmaTotalStatistics, memoryType
instance Offset "memoryHeap" VmaTotalStatistics where rawOffset = #offset struct VmaTotalStatistics, memoryHeap
instance Offset "total"      VmaTotalStatistics where rawOffset = #offset struct VmaTotalStatistics, total

instance Storable VmaTotalStatistics where
  sizeOf _    = #size      struct VmaTotalStatistics
  alignment _ = #alignment struct VmaTotalStatistics

  peek ptr =
    VmaTotalStatistics
      <$> peek (offset @"memoryType" ptr)
      <*> peek (offset @"memoryHeap" ptr)
      <*> peek (offset @"total"      ptr)

  poke ptr val = do
    pokeField @"memoryType" ptr val
    pokeField @"memoryHeap" ptr val
    pokeField @"total"      ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaBudget" #-} VmaBudget =
       VmaBudget
         { statistics :: VmaStatistics
         , usage      :: VkDeviceSize
         , budget     :: VkDeviceSize
         }

instance Offset "statistics" VmaBudget where rawOffset = #offset struct VmaBudget, statistics
instance Offset "usage"      VmaBudget where rawOffset = #offset struct VmaBudget, usage
instance Offset "budget"     VmaBudget where rawOffset = #offset struct VmaBudget, budget

instance Storable VmaBudget where
  sizeOf _    = #size      struct VmaBudget
  alignment _ = #alignment struct VmaBudget

  peek ptr =
    VmaBudget
      <$> peek (offset @"statistics" ptr)
      <*> peek (offset @"usage"      ptr)
      <*> peek (offset @"budget"     ptr)

  poke ptr val = do
    pokeField @"statistics" ptr val
    pokeField @"usage"      ptr val
    pokeField @"budget"     ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaAllocationCreateInfo" #-} VmaAllocationCreateInfo =
       VmaAllocationCreateInfo
         { flags          :: VmaAllocationCreateFlags
         , usage          :: VmaMemoryUsage
         , requiredFlags  :: VkMemoryPropertyFlags
         , preferredFlags :: VkMemoryPropertyFlags
         , memoryTypeBits :: #type uint32_t
         , pool           :: VmaPool
         , pUserData      :: Ptr ()
         , priority       :: #type float
         }

instance Offset "flags"          VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, flags
instance Offset "usage"          VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, usage
instance Offset "requiredFlags"  VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, requiredFlags
instance Offset "preferredFlags" VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, preferredFlags
instance Offset "memoryTypeBits" VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, memoryTypeBits
instance Offset "pool"           VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, pool
instance Offset "pUserData"      VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, pUserData
instance Offset "priority"       VmaAllocationCreateInfo where rawOffset = #offset struct VmaAllocationCreateInfo, priority

instance Storable VmaAllocationCreateInfo where
  sizeOf _    = #size      struct VmaAllocationCreateInfo
  alignment _ = #alignment struct VmaAllocationCreateInfo

  peek ptr =
    VmaAllocationCreateInfo
      <$> peek (offset @"flags"          ptr)
      <*> peek (offset @"usage"          ptr)
      <*> peek (offset @"requiredFlags"  ptr)
      <*> peek (offset @"preferredFlags" ptr)
      <*> peek (offset @"memoryTypeBits" ptr)
      <*> peek (offset @"pool"           ptr)
      <*> peek (offset @"pUserData"      ptr)
      <*> peek (offset @"priority"       ptr)

  poke ptr val = do
    pokeField @"flags"          ptr val
    pokeField @"usage"          ptr val
    pokeField @"requiredFlags"  ptr val
    pokeField @"preferredFlags" ptr val
    pokeField @"memoryTypeBits" ptr val
    pokeField @"pool"           ptr val
    pokeField @"pUserData"      ptr val
    pokeField @"priority"       ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaPoolCreateInfo" #-} VmaPoolCreateInfo =
       VmaPoolCreateInfo
         { memoryTypeIndex        :: #type uint32_t
         , flags                  :: VmaPoolCreateFlags
         , blockSize              :: VkDeviceSize
         , minBlockCount          :: #type size_t
         , maxBlockCount          :: #type size_t
         , priority               :: #type float
         , minAllocationAlignment :: VkDeviceSize
         , pMemoryAllocateNext    :: Ptr ()
         }

instance Offset "memoryTypeIndex"        VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, memoryTypeIndex
instance Offset "flags"                  VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, flags
instance Offset "blockSize"              VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, blockSize
instance Offset "minBlockCount"          VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, minBlockCount
instance Offset "maxBlockCount"          VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, maxBlockCount
instance Offset "priority"               VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, priority
instance Offset "minAllocationAlignment" VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, minAllocationAlignment
instance Offset "pMemoryAllocateNext"    VmaPoolCreateInfo where rawOffset = #offset struct VmaPoolCreateInfo, pMemoryAllocateNext

instance Storable VmaPoolCreateInfo where
  sizeOf _    = #size      struct VmaPoolCreateInfo
  alignment _ = #alignment struct VmaPoolCreateInfo

  peek ptr =
    VmaPoolCreateInfo
      <$> peek (offset @"memoryTypeIndex"        ptr)
      <*> peek (offset @"flags"                  ptr)
      <*> peek (offset @"blockSize"              ptr)
      <*> peek (offset @"minBlockCount"          ptr)
      <*> peek (offset @"maxBlockCount"          ptr)
      <*> peek (offset @"priority"               ptr)
      <*> peek (offset @"minAllocationAlignment" ptr)
      <*> peek (offset @"pMemoryAllocateNext"    ptr)

  poke ptr val = do
    pokeField @"memoryTypeIndex"        ptr val
    pokeField @"flags"                  ptr val
    pokeField @"blockSize"              ptr val
    pokeField @"minBlockCount"          ptr val
    pokeField @"maxBlockCount"          ptr val
    pokeField @"priority"               ptr val
    pokeField @"minAllocationAlignment" ptr val
    pokeField @"pMemoryAllocateNext"    ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaAllocationInfo" #-} VmaAllocationInfo =
       VmaAllocationInfo
         { memoryType   :: #type uint32_t
         , deviceMemory :: VkDeviceMemory
         , offset       :: VkDeviceSize
         , size         :: VkDeviceSize
         , pMappedData  :: Ptr ()
         , pUserData    :: Ptr ()
         , pName        :: Ptr #type char
         }

instance Offset "memoryType"   VmaAllocationInfo where rawOffset = #offset struct VmaAllocationInfo, memoryType
instance Offset "deviceMemory" VmaAllocationInfo where rawOffset = #offset struct VmaAllocationInfo, deviceMemory
instance Offset "offset"       VmaAllocationInfo where rawOffset = #offset struct VmaAllocationInfo, offset
instance Offset "size"         VmaAllocationInfo where rawOffset = #offset struct VmaAllocationInfo, size
instance Offset "pMappedData"  VmaAllocationInfo where rawOffset = #offset struct VmaAllocationInfo, pMappedData
instance Offset "pUserData"    VmaAllocationInfo where rawOffset = #offset struct VmaAllocationInfo, pUserData
instance Offset "pName"        VmaAllocationInfo where rawOffset = #offset struct VmaAllocationInfo, pName

instance Storable VmaAllocationInfo where
  sizeOf _    = #size      struct VmaAllocationInfo
  alignment _ = #alignment struct VmaAllocationInfo

  peek ptr =
    VmaAllocationInfo
      <$> peek (offset @"memoryType"   ptr)
      <*> peek (offset @"deviceMemory" ptr)
      <*> peek (offset @"offset"       ptr)
      <*> peek (offset @"size"         ptr)
      <*> peek (offset @"pMappedData"  ptr)
      <*> peek (offset @"pUserData"    ptr)
      <*> peek (offset @"pName"        ptr)

  poke ptr val = do
    pokeField @"memoryType"   ptr val
    pokeField @"deviceMemory" ptr val
    pokeField @"offset"       ptr val
    pokeField @"size"         ptr val
    pokeField @"pMappedData"  ptr val
    pokeField @"pUserData"    ptr val
    pokeField @"pName"        ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaDefragmentationInfo" #-} VmaDefragmentationInfo =
       VmaDefragmentationInfo
         { flags                 :: VmaDefragmentationFlags
         , pool                  :: VmaPool
         , maxBytesPerPass       :: VkDeviceSize
         , maxAllocationsPerPass :: #type uint32_t
         }

instance Offset "flags"                 VmaDefragmentationInfo where rawOffset = #offset struct VmaDefragmentationInfo, flags
instance Offset "pool"                  VmaDefragmentationInfo where rawOffset = #offset struct VmaDefragmentationInfo, pool
instance Offset "maxBytesPerPass"       VmaDefragmentationInfo where rawOffset = #offset struct VmaDefragmentationInfo, maxBytesPerPass
instance Offset "maxAllocationsPerPass" VmaDefragmentationInfo where rawOffset = #offset struct VmaDefragmentationInfo, maxAllocationsPerPass

instance Storable VmaDefragmentationInfo where
  sizeOf _    = #size      struct VmaDefragmentationInfo
  alignment _ = #alignment struct VmaDefragmentationInfo

  peek ptr =
    VmaDefragmentationInfo
      <$> peek (offset @"flags"                 ptr)
      <*> peek (offset @"pool"                  ptr)
      <*> peek (offset @"maxBytesPerPass"       ptr)
      <*> peek (offset @"maxAllocationsPerPass" ptr)

  poke ptr val = do
    pokeField @"flags"                 ptr val
    pokeField @"pool"                  ptr val
    pokeField @"maxBytesPerPass"       ptr val
    pokeField @"maxAllocationsPerPass" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaDefragmentationMove" #-} VmaDefragmentationMove =
       VmaDefragmentationMove
         { operation        :: VmaDefragmentationMoveOperation
         , srcAllocation    :: VmaAllocation
         , dstTmpAllocation :: VmaAllocation
         }

instance Offset "operation"        VmaDefragmentationMove where rawOffset = #offset struct VmaDefragmentationMove, operation
instance Offset "srcAllocation"    VmaDefragmentationMove where rawOffset = #offset struct VmaDefragmentationMove, srcAllocation
instance Offset "dstTmpAllocation" VmaDefragmentationMove where rawOffset = #offset struct VmaDefragmentationMove, dstTmpAllocation

instance Storable VmaDefragmentationMove where
  sizeOf _    = #size      struct VmaDefragmentationMove
  alignment _ = #alignment struct VmaDefragmentationMove

  peek ptr =
    VmaDefragmentationMove
      <$> peek (offset @"operation"        ptr)
      <*> peek (offset @"srcAllocation"    ptr)
      <*> peek (offset @"dstTmpAllocation" ptr)

  poke ptr val = do
    pokeField @"operation"        ptr val
    pokeField @"srcAllocation"    ptr val
    pokeField @"dstTmpAllocation" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaDefragmentationPassMoveInfo" #-} VmaDefragmentationPassMoveInfo =
       VmaDefragmentationPassMoveInfo
         { moveCount :: #type uint32_t
         , pMoves    :: Ptr VmaDefragmentationMove
         }

instance Offset "moveCount" VmaDefragmentationPassMoveInfo where rawOffset = #offset struct VmaDefragmentationPassMoveInfo, moveCount
instance Offset "pMoves"    VmaDefragmentationPassMoveInfo where rawOffset = #offset struct VmaDefragmentationPassMoveInfo, pMoves

instance Storable VmaDefragmentationPassMoveInfo where
  sizeOf _    = #size      struct VmaDefragmentationPassMoveInfo
  alignment _ = #alignment struct VmaDefragmentationPassMoveInfo

  peek ptr =
    VmaDefragmentationPassMoveInfo
      <$> peek (offset @"moveCount" ptr)
      <*> peek (offset @"pMoves"    ptr)

  poke ptr val = do
    pokeField @"moveCount" ptr val
    pokeField @"pMoves"    ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaDefragmentationStats" #-} VmaDefragmentationStats =
       VmaDefragmentationStats
         { bytesMoved              :: VkDeviceSize
         , bytesFreed              :: VkDeviceSize
         , allocationsMoved        :: #type uint32_t
         , deviceMemoryBlocksFreed :: #type uint32_t
         }

instance Offset "bytesMoved"              VmaDefragmentationStats where rawOffset = #offset struct VmaDefragmentationStats, bytesMoved
instance Offset "bytesFreed"              VmaDefragmentationStats where rawOffset = #offset struct VmaDefragmentationStats, bytesFreed
instance Offset "allocationsMoved"        VmaDefragmentationStats where rawOffset = #offset struct VmaDefragmentationStats, allocationsMoved
instance Offset "deviceMemoryBlocksFreed" VmaDefragmentationStats where rawOffset = #offset struct VmaDefragmentationStats, deviceMemoryBlocksFreed

instance Storable VmaDefragmentationStats where
  sizeOf _    = #size      struct VmaDefragmentationStats
  alignment _ = #alignment struct VmaDefragmentationStats

  peek ptr =
    VmaDefragmentationStats
      <$> peek (offset @"bytesMoved"              ptr)
      <*> peek (offset @"bytesFreed"              ptr)
      <*> peek (offset @"allocationsMoved"        ptr)
      <*> peek (offset @"deviceMemoryBlocksFreed" ptr)

  poke ptr val = do
    pokeField @"bytesMoved"              ptr val
    pokeField @"bytesFreed"              ptr val
    pokeField @"allocationsMoved"        ptr val
    pokeField @"deviceMemoryBlocksFreed" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaVirtualBlockCreateInfo" #-} VmaVirtualBlockCreateInfo =
       VmaVirtualBlockCreateInfo
         { size                 :: VkDeviceSize
         , flags                :: VmaVirtualBlockCreateFlags
         , pAllocationCallbacks :: Ptr VkAllocationCallbacks
         }

instance Offset "size"                 VmaVirtualBlockCreateInfo where rawOffset = #offset struct VmaVirtualBlockCreateInfo, size
instance Offset "flags"                VmaVirtualBlockCreateInfo where rawOffset = #offset struct VmaVirtualBlockCreateInfo, flags
instance Offset "pAllocationCallbacks" VmaVirtualBlockCreateInfo where rawOffset = #offset struct VmaVirtualBlockCreateInfo, pAllocationCallbacks

instance Storable VmaVirtualBlockCreateInfo where
  sizeOf _    = #size      struct VmaVirtualBlockCreateInfo
  alignment _ = #alignment struct VmaVirtualBlockCreateInfo

  peek ptr =
    VmaVirtualBlockCreateInfo
      <$> peek (offset @"size"                 ptr)
      <*> peek (offset @"flags"                ptr)
      <*> peek (offset @"pAllocationCallbacks" ptr)

  poke ptr val = do
    pokeField @"size"                 ptr val
    pokeField @"flags"                ptr val
    pokeField @"pAllocationCallbacks" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaVirtualAllocationCreateInfo" #-} VmaVirtualAllocationCreateInfo =
       VmaVirtualAllocationCreateInfo
         { size      :: VkDeviceSize
         , alignment :: VkDeviceSize
         , flags     :: VmaVirtualAllocationCreateFlags
         , pUserData :: Ptr ()
         }

instance Offset "size"      VmaVirtualAllocationCreateInfo where rawOffset = #offset struct VmaVirtualAllocationCreateInfo, size
instance Offset "alignment" VmaVirtualAllocationCreateInfo where rawOffset = #offset struct VmaVirtualAllocationCreateInfo, alignment
instance Offset "flags"     VmaVirtualAllocationCreateInfo where rawOffset = #offset struct VmaVirtualAllocationCreateInfo, flags
instance Offset "pUserData" VmaVirtualAllocationCreateInfo where rawOffset = #offset struct VmaVirtualAllocationCreateInfo, pUserData

instance Storable VmaVirtualAllocationCreateInfo where
  sizeOf _    = #size      struct VmaVirtualAllocationCreateInfo
  alignment _ = #alignment struct VmaVirtualAllocationCreateInfo

  peek ptr =
    VmaVirtualAllocationCreateInfo
      <$> peek (offset @"size"      ptr)
      <*> peek (offset @"alignment" ptr)
      <*> peek (offset @"flags"     ptr)
      <*> peek (offset @"pUserData" ptr)

  poke ptr val = do
    pokeField @"size"      ptr val
    pokeField @"alignment" ptr val
    pokeField @"flags"     ptr val
    pokeField @"pUserData" ptr val



data {-# CTYPE "vk_mem_alloc.h" "VmaVirtualAllocationInfo" #-} VmaVirtualAllocationInfo =
       VmaVirtualAllocationInfo
         { offset    :: VkDeviceSize
         , size      :: VkDeviceSize
         , pUserData :: Ptr ()
         }

instance Offset "offset"    VmaVirtualAllocationInfo where rawOffset = #offset struct VmaVirtualAllocationInfo, offset
instance Offset "size"      VmaVirtualAllocationInfo where rawOffset = #offset struct VmaVirtualAllocationInfo, size
instance Offset "pUserData" VmaVirtualAllocationInfo where rawOffset = #offset struct VmaVirtualAllocationInfo, pUserData

instance Storable VmaVirtualAllocationInfo where
  sizeOf _    = #size      struct VmaVirtualAllocationInfo
  alignment _ = #alignment struct VmaVirtualAllocationInfo

  peek ptr =
    VmaVirtualAllocationInfo
      <$> peek (offset @"offset"    ptr)
      <*> peek (offset @"size"      ptr)
      <*> peek (offset @"pUserData" ptr)

  poke ptr val = do
    pokeField @"offset"    ptr val
    pokeField @"size"      ptr val
    pokeField @"pUserData" ptr val



foreign import CALLCV "vk_mem_alloc.h vmaCreateAllocator"
  vmaCreateAllocator
    :: Ptr VmaAllocatorCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocator           -- ^ pAllocator
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateAllocator"
  vmaCreateAllocatorUnsafe
    :: Ptr VmaAllocatorCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocator           -- ^ pAllocator
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaDestroyAllocator"
  vmaDestroyAllocator
    :: VmaAllocator -- ^ allocator
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaDestroyAllocator"
  vmaDestroyAllocatorUnsafe
    :: VmaAllocator -- ^ allocator
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetAllocatorInfo"
  vmaGetAllocatorInfo
    :: VmaAllocator         -- ^ allocator
    -> Ptr VmaAllocatorInfo -- ^ pAllocatorInfo
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetAllocatorInfo"
  vmaGetAllocatorInfoUnsafe
    :: VmaAllocator         -- ^ allocator
    -> Ptr VmaAllocatorInfo -- ^ pAllocatorInfo
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetPhysicalDeviceProperties"
  vmaGetPhysicalDeviceProperties
    :: VmaAllocator                         -- ^ allocator
    -> Ptr (Ptr VkPhysicalDeviceProperties) -- ^ ppPhysicalDeviceProperties
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetPhysicalDeviceProperties"
  vmaGetPhysicalDevicePropertiesUnsafe
    :: VmaAllocator                         -- ^ allocator
    -> Ptr (Ptr VkPhysicalDeviceProperties) -- ^ ppPhysicalDeviceProperties
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetMemoryProperties"
  vmaGetMemoryProperties
    :: VmaAllocator                               -- ^ allocator
    -> Ptr (Ptr VkPhysicalDeviceMemoryProperties) -- ^ ppPhysicalDeviceMemoryProperties
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetMemoryProperties"
  vmaGetMemoryPropertiesUnsafe
    :: VmaAllocator                               -- ^ allocator
    -> Ptr (Ptr VkPhysicalDeviceMemoryProperties) -- ^ ppPhysicalDeviceMemoryProperties
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetMemoryTypeProperties"
  vmaGetMemoryTypeProperties
    :: VmaAllocator              -- ^ allocator
    -> #{type uint32_t}          -- ^ memoryTypeIndex
    -> Ptr VkMemoryPropertyFlags -- ^ pFlags
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetMemoryTypeProperties"
  vmaGetMemoryTypePropertiesUnsafe
    :: VmaAllocator              -- ^ allocator
    -> #{type uint32_t}          -- ^ memoryTypeIndex
    -> Ptr VkMemoryPropertyFlags -- ^ pFlags
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaSetCurrentFrameIndex"
  vmaSetCurrentFrameIndex
    :: VmaAllocator     -- ^ allocator
    -> #{type uint32_t} -- ^ frameIndex
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaSetCurrentFrameIndex"
  vmaSetCurrentFrameIndexUnsafe
    :: VmaAllocator     -- ^ allocator
    -> #{type uint32_t} -- ^ frameIndex
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaCalculateStatistics"
  vmaCalculateStatistics
    :: VmaAllocator           -- ^ allocator
    -> Ptr VmaTotalStatistics -- ^ pStats
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCalculateStatistics"
  vmaCalculateStatisticsUnsafe
    :: VmaAllocator           -- ^ allocator
    -> Ptr VmaTotalStatistics -- ^ pStats
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetHeapBudgets"
  vmaGetHeapBudgets
    :: VmaAllocator  -- ^ allocator
    -> Ptr VmaBudget -- ^ pBudgets
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetHeapBudgets"
  vmaGetHeapBudgetsUnsafe
    :: VmaAllocator  -- ^ allocator
    -> Ptr VmaBudget -- ^ pBudgets
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaFindMemoryTypeIndex"
  vmaFindMemoryTypeIndex
    :: VmaAllocator                -- ^ allocator
    -> #{type uint32_t}            -- ^ memoryTypeBits
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr #{type uint32_t}        -- ^ pMemoryTypeIndex
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFindMemoryTypeIndex"
  vmaFindMemoryTypeIndexUnsafe
    :: VmaAllocator                -- ^ allocator
    -> #{type uint32_t}            -- ^ memoryTypeBits
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr #{type uint32_t}        -- ^ pMemoryTypeIndex
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaFindMemoryTypeIndexForBufferInfo"
  vmaFindMemoryTypeIndexForBufferInfo
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkBufferCreateInfo      -- ^ pBufferCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr #{type uint32_t}        -- ^ pMemoryTypeIndex
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFindMemoryTypeIndexForBufferInfo"
  vmaFindMemoryTypeIndexForBufferInfoUnsafe
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkBufferCreateInfo      -- ^ pBufferCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr #{type uint32_t}        -- ^ pMemoryTypeIndex
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaFindMemoryTypeIndexForImageInfo"
  vmaFindMemoryTypeIndexForImageInfo
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkImageCreateInfo       -- ^ pImageCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr #{type uint32_t}        -- ^ pMemoryTypeIndex
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFindMemoryTypeIndexForImageInfo"
  vmaFindMemoryTypeIndexForImageInfoUnsafe
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkImageCreateInfo       -- ^ pImageCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr #{type uint32_t}        -- ^ pMemoryTypeIndex
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCreatePool"
  vmaCreatePool
    :: VmaAllocator          -- ^ allocator
    -> Ptr VmaPoolCreateInfo -- ^ pCreateInfo
    -> Ptr VmaPool           -- ^ pPool
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreatePool"
  vmaCreatePoolUnsafe
    :: VmaAllocator          -- ^ allocator
    -> Ptr VmaPoolCreateInfo -- ^ pCreateInfo
    -> Ptr VmaPool           -- ^ pPool
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaDestroyPool"
  vmaDestroyPool
    :: VmaAllocator -- ^ allocator
    -> VmaPool      -- ^ pool
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaDestroyPool"
  vmaDestroyPoolUnsafe
    :: VmaAllocator -- ^ allocator
    -> VmaPool      -- ^ pool
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetPoolStatistics"
  vmaGetPoolStatistics
    :: VmaAllocator      -- ^ allocator
    -> VmaPool           -- ^ pool
    -> Ptr VmaStatistics -- ^ pPoolStats
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetPoolStatistics"
  vmaGetPoolStatisticsUnsafe
    :: VmaAllocator      -- ^ allocator
    -> VmaPool           -- ^ pool
    -> Ptr VmaStatistics -- ^ pPoolStats
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaCalculatePoolStatistics"
  vmaCalculatePoolStatistics
    :: VmaAllocator              -- ^ allocator
    -> VmaPool                   -- ^ pool
    -> Ptr VmaDetailedStatistics -- ^ pPoolStats
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCalculatePoolStatistics"
  vmaCalculatePoolStatisticsUnsafe
    :: VmaAllocator              -- ^ allocator
    -> VmaPool                   -- ^ pool
    -> Ptr VmaDetailedStatistics -- ^ pPoolStats
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaCheckPoolCorruption"
  vmaCheckPoolCorruption
    :: VmaAllocator -- ^ allocator
    -> VmaPool      -- ^ pool
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCheckPoolCorruption"
  vmaCheckPoolCorruptionUnsafe
    :: VmaAllocator -- ^ allocator
    -> VmaPool      -- ^ pool
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaGetPoolName"
  vmaGetPoolName
    :: VmaAllocator           -- ^ allocator
    -> VmaPool                -- ^ pool
    -> Ptr (Ptr #{type char}) -- ^ ppName
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetPoolName"
  vmaGetPoolNameUnsafe
    :: VmaAllocator           -- ^ allocator
    -> VmaPool                -- ^ pool
    -> Ptr (Ptr #{type char}) -- ^ ppName
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaSetPoolName"
  vmaSetPoolName
    :: VmaAllocator     -- ^ allocator
    -> VmaPool          -- ^ pool
    -> Ptr #{type char} -- ^ pName
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaSetPoolName"
  vmaSetPoolNameUnsafe
    :: VmaAllocator     -- ^ allocator
    -> VmaPool          -- ^ pool
    -> Ptr #{type char} -- ^ pName
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaAllocateMemory"
  vmaAllocateMemory
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkMemoryRequirements    -- ^ pVkMemoryRequirements
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaAllocateMemory"
  vmaAllocateMemoryUnsafe
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkMemoryRequirements    -- ^ pVkMemoryRequirements
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaAllocateMemoryPages"
  vmaAllocateMemoryPages
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkMemoryRequirements    -- ^ pVkMemoryRequirements
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> #{type size_t}              -- ^ allocationCount
    -> Ptr VmaAllocation           -- ^ pAllocations
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaAllocateMemoryPages"
  vmaAllocateMemoryPagesUnsafe
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkMemoryRequirements    -- ^ pVkMemoryRequirements
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> #{type size_t}              -- ^ allocationCount
    -> Ptr VmaAllocation           -- ^ pAllocations
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaAllocateMemoryForBuffer"
  vmaAllocateMemoryForBuffer
    :: VmaAllocator                -- ^ allocator
    -> VkBuffer                    -- ^ buffer
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaAllocateMemoryForBuffer"
  vmaAllocateMemoryForBufferUnsafe
    :: VmaAllocator                -- ^ allocator
    -> VkBuffer                    -- ^ buffer
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaAllocateMemoryForImage"
  vmaAllocateMemoryForImage
    :: VmaAllocator                -- ^ allocator
    -> VkImage                     -- ^ image
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaAllocateMemoryForImage"
  vmaAllocateMemoryForImageUnsafe
    :: VmaAllocator                -- ^ allocator
    -> VkImage                     -- ^ image
    -> Ptr VmaAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaFreeMemory"
  vmaFreeMemory
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFreeMemory"
  vmaFreeMemoryUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaFreeMemoryPages"
  vmaFreeMemoryPages
    :: VmaAllocator      -- ^ allocator
    -> #{type size_t}    -- ^ allocationCount
    -> Ptr VmaAllocation -- ^ pAllocations
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFreeMemoryPages"
  vmaFreeMemoryPagesUnsafe
    :: VmaAllocator      -- ^ allocator
    -> #{type size_t}    -- ^ allocationCount
    -> Ptr VmaAllocation -- ^ pAllocations
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetAllocationInfo"
  vmaGetAllocationInfo
    :: VmaAllocator          -- ^ allocator
    -> VmaAllocation         -- ^ allocation
    -> Ptr VmaAllocationInfo -- ^ pAllocationInfo
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetAllocationInfo"
  vmaGetAllocationInfoUnsafe
    :: VmaAllocator          -- ^ allocator
    -> VmaAllocation         -- ^ allocation
    -> Ptr VmaAllocationInfo -- ^ pAllocationInfo
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaSetAllocationUserData"
  vmaSetAllocationUserData
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> Ptr ()        -- ^ pUserData
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaSetAllocationUserData"
  vmaSetAllocationUserDataUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> Ptr ()        -- ^ pUserData
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaSetAllocationName"
  vmaSetAllocationName
    :: VmaAllocator     -- ^ allocator
    -> VmaAllocation    -- ^ allocation
    -> Ptr #{type char} -- ^ pName
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaSetAllocationName"
  vmaSetAllocationNameUnsafe
    :: VmaAllocator     -- ^ allocator
    -> VmaAllocation    -- ^ allocation
    -> Ptr #{type char} -- ^ pName
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetAllocationMemoryProperties"
  vmaGetAllocationMemoryProperties
    :: VmaAllocator              -- ^ allocator
    -> VmaAllocation             -- ^ allocation
    -> Ptr VkMemoryPropertyFlags -- ^ pFlags
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetAllocationMemoryProperties"
  vmaGetAllocationMemoryPropertiesUnsafe
    :: VmaAllocator              -- ^ allocator
    -> VmaAllocation             -- ^ allocation
    -> Ptr VkMemoryPropertyFlags -- ^ pFlags
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaMapMemory"
  vmaMapMemory
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> Ptr (Ptr ())  -- ^ ppData
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaMapMemory"
  vmaMapMemoryUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> Ptr (Ptr ())  -- ^ ppData
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaUnmapMemory"
  vmaUnmapMemory
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaUnmapMemory"
  vmaUnmapMemoryUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaFlushAllocation"
  vmaFlushAllocation
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ offset
    -> VkDeviceSize  -- ^ size
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFlushAllocation"
  vmaFlushAllocationUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ offset
    -> VkDeviceSize  -- ^ size
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaInvalidateAllocation"
  vmaInvalidateAllocation
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ offset
    -> VkDeviceSize  -- ^ size
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaInvalidateAllocation"
  vmaInvalidateAllocationUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ offset
    -> VkDeviceSize  -- ^ size
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaFlushAllocations"
  vmaFlushAllocations
    :: VmaAllocator      -- ^ allocator
    -> #{type uint32_t}  -- ^ allocationCount
    -> Ptr VmaAllocation -- ^ allocations
    -> Ptr VkDeviceSize  -- ^ offsets
    -> Ptr VkDeviceSize  -- ^ sizes
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFlushAllocations"
  vmaFlushAllocationsUnsafe
    :: VmaAllocator      -- ^ allocator
    -> #{type uint32_t}  -- ^ allocationCount
    -> Ptr VmaAllocation -- ^ allocations
    -> Ptr VkDeviceSize  -- ^ offsets
    -> Ptr VkDeviceSize  -- ^ sizes
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaInvalidateAllocations"
  vmaInvalidateAllocations
    :: VmaAllocator      -- ^ allocator
    -> #{type uint32_t}  -- ^ allocationCount
    -> Ptr VmaAllocation -- ^ allocations
    -> Ptr VkDeviceSize  -- ^ offsets
    -> Ptr VkDeviceSize  -- ^ sizes
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaInvalidateAllocations"
  vmaInvalidateAllocationsUnsafe
    :: VmaAllocator      -- ^ allocator
    -> #{type uint32_t}  -- ^ allocationCount
    -> Ptr VmaAllocation -- ^ allocations
    -> Ptr VkDeviceSize  -- ^ offsets
    -> Ptr VkDeviceSize  -- ^ sizes
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCheckCorruption"
  vmaCheckCorruption
    :: VmaAllocator     -- ^ allocator
    -> #{type uint32_t} -- ^ memoryTypeBits
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCheckCorruption"
  vmaCheckCorruptionUnsafe
    :: VmaAllocator     -- ^ allocator
    -> #{type uint32_t} -- ^ memoryTypeBits
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaBeginDefragmentation"
  vmaBeginDefragmentation
    :: VmaAllocator                  -- ^ allocator
    -> Ptr VmaDefragmentationInfo    -- ^ pInfo
    -> Ptr VmaDefragmentationContext -- ^ pContext
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBeginDefragmentation"
  vmaBeginDefragmentationUnsafe
    :: VmaAllocator                  -- ^ allocator
    -> Ptr VmaDefragmentationInfo    -- ^ pInfo
    -> Ptr VmaDefragmentationContext -- ^ pContext
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaEndDefragmentation"
  vmaEndDefragmentation
    :: VmaAllocator                -- ^ allocator
    -> VmaDefragmentationContext   -- ^ context
    -> Ptr VmaDefragmentationStats -- ^ pStats
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaEndDefragmentation"
  vmaEndDefragmentationUnsafe
    :: VmaAllocator                -- ^ allocator
    -> VmaDefragmentationContext   -- ^ context
    -> Ptr VmaDefragmentationStats -- ^ pStats
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaBeginDefragmentationPass"
  vmaBeginDefragmentationPass
    :: VmaAllocator                       -- ^ allocator
    -> VmaDefragmentationContext          -- ^ context
    -> Ptr VmaDefragmentationPassMoveInfo -- ^ pPassInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBeginDefragmentationPass"
  vmaBeginDefragmentationPassUnsafe
    :: VmaAllocator                       -- ^ allocator
    -> VmaDefragmentationContext          -- ^ context
    -> Ptr VmaDefragmentationPassMoveInfo -- ^ pPassInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaEndDefragmentationPass"
  vmaEndDefragmentationPass
    :: VmaAllocator                       -- ^ allocator
    -> VmaDefragmentationContext          -- ^ context
    -> Ptr VmaDefragmentationPassMoveInfo -- ^ pPassInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaEndDefragmentationPass"
  vmaEndDefragmentationPassUnsafe
    :: VmaAllocator                       -- ^ allocator
    -> VmaDefragmentationContext          -- ^ context
    -> Ptr VmaDefragmentationPassMoveInfo -- ^ pPassInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaBindBufferMemory"
  vmaBindBufferMemory
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkBuffer      -- ^ buffer
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBindBufferMemory"
  vmaBindBufferMemoryUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkBuffer      -- ^ buffer
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaBindBufferMemory2"
  vmaBindBufferMemory2
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ allocationLocalOffset
    -> VkBuffer      -- ^ buffer
    -> Ptr ()        -- ^ pNext
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBindBufferMemory2"
  vmaBindBufferMemory2Unsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ allocationLocalOffset
    -> VkBuffer      -- ^ buffer
    -> Ptr ()        -- ^ pNext
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaBindImageMemory"
  vmaBindImageMemory
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkImage       -- ^ image
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBindImageMemory"
  vmaBindImageMemoryUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkImage       -- ^ image
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaBindImageMemory2"
  vmaBindImageMemory2
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ allocationLocalOffset
    -> VkImage       -- ^ image
    -> Ptr ()        -- ^ pNext
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBindImageMemory2"
  vmaBindImageMemory2Unsafe
    :: VmaAllocator  -- ^ allocator
    -> VmaAllocation -- ^ allocation
    -> VkDeviceSize  -- ^ allocationLocalOffset
    -> VkImage       -- ^ image
    -> Ptr ()        -- ^ pNext
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCreateBuffer"
  vmaCreateBuffer
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkBufferCreateInfo      -- ^ pBufferCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr VkBuffer                -- ^ pBuffer
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateBuffer"
  vmaCreateBufferUnsafe
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkBufferCreateInfo      -- ^ pBufferCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr VkBuffer                -- ^ pBuffer
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCreateBufferWithAlignment"
  vmaCreateBufferWithAlignment
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkBufferCreateInfo      -- ^ pBufferCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> VkDeviceSize                -- ^ minAlignment
    -> Ptr VkBuffer                -- ^ pBuffer
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateBufferWithAlignment"
  vmaCreateBufferWithAlignmentUnsafe
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkBufferCreateInfo      -- ^ pBufferCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> VkDeviceSize                -- ^ minAlignment
    -> Ptr VkBuffer                -- ^ pBuffer
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCreateAliasingBuffer"
  vmaCreateAliasingBuffer
    :: VmaAllocator           -- ^ allocator
    -> VmaAllocation          -- ^ allocation
    -> Ptr VkBufferCreateInfo -- ^ pBufferCreateInfo
    -> Ptr VkBuffer           -- ^ pBuffer
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateAliasingBuffer"
  vmaCreateAliasingBufferUnsafe
    :: VmaAllocator           -- ^ allocator
    -> VmaAllocation          -- ^ allocation
    -> Ptr VkBufferCreateInfo -- ^ pBufferCreateInfo
    -> Ptr VkBuffer           -- ^ pBuffer
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCreateAliasingBuffer2"
  vmaCreateAliasingBuffer2
    :: VmaAllocator           -- ^ allocator
    -> VmaAllocation          -- ^ allocation
    -> VkDeviceSize           -- ^ allocationLocalOffset
    -> Ptr VkBufferCreateInfo -- ^ pBufferCreateInfo
    -> Ptr VkBuffer           -- ^ pBuffer
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateAliasingBuffer2"
  vmaCreateAliasingBuffer2Unsafe
    :: VmaAllocator           -- ^ allocator
    -> VmaAllocation          -- ^ allocation
    -> VkDeviceSize           -- ^ allocationLocalOffset
    -> Ptr VkBufferCreateInfo -- ^ pBufferCreateInfo
    -> Ptr VkBuffer           -- ^ pBuffer
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaDestroyBuffer"
  vmaDestroyBuffer
    :: VmaAllocator  -- ^ allocator
    -> VkBuffer      -- ^ buffer
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaDestroyBuffer"
  vmaDestroyBufferUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VkBuffer      -- ^ buffer
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaCreateImage"
  vmaCreateImage
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkImageCreateInfo       -- ^ pImageCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr VkImage                 -- ^ pImage
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateImage"
  vmaCreateImageUnsafe
    :: VmaAllocator                -- ^ allocator
    -> Ptr VkImageCreateInfo       -- ^ pImageCreateInfo
    -> Ptr VmaAllocationCreateInfo -- ^ pAllocationCreateInfo
    -> Ptr VkImage                 -- ^ pImage
    -> Ptr VmaAllocation           -- ^ pAllocation
    -> Ptr VmaAllocationInfo       -- ^ pAllocationInfo
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCreateAliasingImage"
  vmaCreateAliasingImage
    :: VmaAllocator          -- ^ allocator
    -> VmaAllocation         -- ^ allocation
    -> Ptr VkImageCreateInfo -- ^ pImageCreateInfo
    -> Ptr VkImage           -- ^ pImage
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateAliasingImage"
  vmaCreateAliasingImageUnsafe
    :: VmaAllocator          -- ^ allocator
    -> VmaAllocation         -- ^ allocation
    -> Ptr VkImageCreateInfo -- ^ pImageCreateInfo
    -> Ptr VkImage           -- ^ pImage
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaCreateAliasingImage2"
  vmaCreateAliasingImage2
    :: VmaAllocator          -- ^ allocator
    -> VmaAllocation         -- ^ allocation
    -> VkDeviceSize          -- ^ allocationLocalOffset
    -> Ptr VkImageCreateInfo -- ^ pImageCreateInfo
    -> Ptr VkImage           -- ^ pImage
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateAliasingImage2"
  vmaCreateAliasingImage2Unsafe
    :: VmaAllocator          -- ^ allocator
    -> VmaAllocation         -- ^ allocation
    -> VkDeviceSize          -- ^ allocationLocalOffset
    -> Ptr VkImageCreateInfo -- ^ pImageCreateInfo
    -> Ptr VkImage           -- ^ pImage
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaDestroyImage"
  vmaDestroyImage
    :: VmaAllocator  -- ^ allocator
    -> VkImage       -- ^ image
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaDestroyImage"
  vmaDestroyImageUnsafe
    :: VmaAllocator  -- ^ allocator
    -> VkImage       -- ^ image
    -> VmaAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaCreateVirtualBlock"
  vmaCreateVirtualBlock
    :: Ptr VmaVirtualBlockCreateInfo -- ^ pCreateInfo
    -> Ptr VmaVirtualBlock           -- ^ pVirtualBlock
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCreateVirtualBlock"
  vmaCreateVirtualBlockUnsafe
    :: Ptr VmaVirtualBlockCreateInfo -- ^ pCreateInfo
    -> Ptr VmaVirtualBlock           -- ^ pVirtualBlock
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaDestroyVirtualBlock"
  vmaDestroyVirtualBlock
    :: VmaVirtualBlock -- ^ virtualBlock
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaDestroyVirtualBlock"
  vmaDestroyVirtualBlockUnsafe
    :: VmaVirtualBlock -- ^ virtualBlock
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaIsVirtualBlockEmpty"
  vmaIsVirtualBlockEmpty
    :: VmaVirtualBlock -- ^ virtualBlock
    -> IO VkBool32

foreign import CALLCV unsafe "vk_mem_alloc.h vmaIsVirtualBlockEmpty"
  vmaIsVirtualBlockEmptyUnsafe
    :: VmaVirtualBlock -- ^ virtualBlock
    -> IO VkBool32

foreign import CALLCV "vk_mem_alloc.h vmaGetVirtualAllocationInfo"
  vmaGetVirtualAllocationInfo
    :: VmaVirtualBlock              -- ^ virtualBlock
    -> VmaVirtualAllocation         -- ^ allocation
    -> Ptr VmaVirtualAllocationInfo -- ^ pVirtualAllocInfo
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetVirtualAllocationInfo"
  vmaGetVirtualAllocationInfoUnsafe
    :: VmaVirtualBlock              -- ^ virtualBlock
    -> VmaVirtualAllocation         -- ^ allocation
    -> Ptr VmaVirtualAllocationInfo -- ^ pVirtualAllocInfo
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaVirtualAllocate"
  vmaVirtualAllocate
    :: VmaVirtualBlock                    -- ^ virtualBlock
    -> Ptr VmaVirtualAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaVirtualAllocation           -- ^ pAllocation
    -> Ptr VkDeviceSize                   -- ^ pOffset
    -> IO VkResult

foreign import CALLCV unsafe "vk_mem_alloc.h vmaVirtualAllocate"
  vmaVirtualAllocateUnsafe
    :: VmaVirtualBlock                    -- ^ virtualBlock
    -> Ptr VmaVirtualAllocationCreateInfo -- ^ pCreateInfo
    -> Ptr VmaVirtualAllocation           -- ^ pAllocation
    -> Ptr VkDeviceSize                   -- ^ pOffset
    -> IO VkResult

foreign import CALLCV "vk_mem_alloc.h vmaVirtualFree"
  vmaVirtualFree
    :: VmaVirtualBlock      -- ^ virtualBlock
    -> VmaVirtualAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaVirtualFree"
  vmaVirtualFreeUnsafe
    :: VmaVirtualBlock      -- ^ virtualBlock
    -> VmaVirtualAllocation -- ^ allocation
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaClearVirtualBlock"
  vmaClearVirtualBlock
    :: VmaVirtualBlock -- ^ virtualBlock
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaClearVirtualBlock"
  vmaClearVirtualBlockUnsafe
    :: VmaVirtualBlock -- ^ virtualBlock
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaSetVirtualAllocationUserData"
  vmaSetVirtualAllocationUserData
    :: VmaVirtualBlock      -- ^ virtualBlock
    -> VmaVirtualAllocation -- ^ allocation
    -> Ptr ()               -- ^ pUserData
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaSetVirtualAllocationUserData"
  vmaSetVirtualAllocationUserDataUnsafe
    :: VmaVirtualBlock      -- ^ virtualBlock
    -> VmaVirtualAllocation -- ^ allocation
    -> Ptr ()               -- ^ pUserData
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaGetVirtualBlockStatistics"
  vmaGetVirtualBlockStatistics
    :: VmaVirtualBlock   -- ^ virtualBlock
    -> Ptr VmaStatistics -- ^ pStats
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaGetVirtualBlockStatistics"
  vmaGetVirtualBlockStatisticsUnsafe
    :: VmaVirtualBlock   -- ^ virtualBlock
    -> Ptr VmaStatistics -- ^ pStats
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaCalculateVirtualBlockStatistics"
  vmaCalculateVirtualBlockStatistics
    :: VmaVirtualBlock           -- ^ virtualBlock
    -> Ptr VmaDetailedStatistics -- ^ pStats
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaCalculateVirtualBlockStatistics"
  vmaCalculateVirtualBlockStatisticsUnsafe
    :: VmaVirtualBlock           -- ^ virtualBlock
    -> Ptr VmaDetailedStatistics -- ^ pStats
    -> IO ()

#if VMA_STATS_STRING_ENABLED

foreign import CALLCV "vk_mem_alloc.h vmaBuildVirtualBlockStatsString"
  vmaBuildVirtualBlockStatsString
    :: VmaVirtualBlock        -- ^ virtualBlock
    -> Ptr (Ptr #{type char}) -- ^ ppStatsString
    -> VkBool32               -- ^ detailedMap
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBuildVirtualBlockStatsString"
  vmaBuildVirtualBlockStatsStringUnsafe
    :: VmaVirtualBlock        -- ^ virtualBlock
    -> Ptr (Ptr #{type char}) -- ^ ppStatsString
    -> VkBool32               -- ^ detailedMap
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaFreeVirtualBlockStatsString"
  vmaFreeVirtualBlockStatsString
    :: VmaVirtualBlock  -- ^ virtualBlock
    -> Ptr #{type char} -- ^ pStatsString
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFreeVirtualBlockStatsString"
  vmaFreeVirtualBlockStatsStringUnsafe
    :: VmaVirtualBlock  -- ^ virtualBlock
    -> Ptr #{type char} -- ^ pStatsString
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaBuildStatsString"
  vmaBuildStatsString
    :: VmaAllocator           -- ^ allocator
    -> Ptr (Ptr #{type char}) -- ^ ppStatsString
    -> VkBool32               -- ^ detailedMap
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaBuildStatsString"
  vmaBuildStatsStringUnsafe
    :: VmaAllocator           -- ^ allocator
    -> Ptr (Ptr #{type char}) -- ^ ppStatsString
    -> VkBool32               -- ^ detailedMap
    -> IO ()

foreign import CALLCV "vk_mem_alloc.h vmaFreeStatsString"
  vmaFreeStatsString
    :: VmaAllocator     -- ^ allocator
    -> Ptr #{type char} -- ^ pStatsString
    -> IO ()

foreign import CALLCV unsafe "vk_mem_alloc.h vmaFreeStatsString"
  vmaFreeStatsStringUnsafe
    :: VmaAllocator     -- ^ allocator
    -> Ptr #{type char} -- ^ pStatsString
    -> IO ()

#endif
