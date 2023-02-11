{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorIndexingFeatures" #-} VkPhysicalDeviceDescriptorIndexingFeatures =
       VkPhysicalDeviceDescriptorIndexingFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderInputAttachmentArrayDynamicIndexing :: VkBool32
         , shaderUniformTexelBufferArrayDynamicIndexing :: VkBool32
         , shaderStorageTexelBufferArrayDynamicIndexing :: VkBool32
         , shaderUniformBufferArrayNonUniformIndexing :: VkBool32
         , shaderSampledImageArrayNonUniformIndexing :: VkBool32
         , shaderStorageBufferArrayNonUniformIndexing :: VkBool32
         , shaderStorageImageArrayNonUniformIndexing :: VkBool32
         , shaderInputAttachmentArrayNonUniformIndexing :: VkBool32
         , shaderUniformTexelBufferArrayNonUniformIndexing :: VkBool32
         , shaderStorageTexelBufferArrayNonUniformIndexing :: VkBool32
         , descriptorBindingUniformBufferUpdateAfterBind :: VkBool32
         , descriptorBindingSampledImageUpdateAfterBind :: VkBool32
         , descriptorBindingStorageImageUpdateAfterBind :: VkBool32
         , descriptorBindingStorageBufferUpdateAfterBind :: VkBool32
         , descriptorBindingUniformTexelBufferUpdateAfterBind :: VkBool32
         , descriptorBindingStorageTexelBufferUpdateAfterBind :: VkBool32
         , descriptorBindingUpdateUnusedWhilePending :: VkBool32
         , descriptorBindingPartiallyBound :: VkBool32
         , descriptorBindingVariableDescriptorCount :: VkBool32
         , runtimeDescriptorArray :: VkBool32
         }

instance Storable VkPhysicalDeviceDescriptorIndexingFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDescriptorIndexingFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceDescriptorIndexingFeatures}

  peek ptr = 
    VkPhysicalDeviceDescriptorIndexingFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderUniformTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderStorageTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderUniformBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderSampledImageArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageImageArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"descriptorBindingUniformBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingSampledImageUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageImageUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingUpdateUnusedWhilePending" ptr)
       <*> peek (offset @"descriptorBindingPartiallyBound" ptr)
       <*> peek (offset @"descriptorBindingVariableDescriptorCount" ptr)
       <*> peek (offset @"runtimeDescriptorArray" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderInputAttachmentArrayDynamicIndexing" ptr val
    pokeField @"shaderUniformTexelBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderStorageTexelBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderUniformBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderSampledImageArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageImageArrayNonUniformIndexing" ptr val
    pokeField @"shaderInputAttachmentArrayNonUniformIndexing" ptr val
    pokeField @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr val
    pokeField @"descriptorBindingUniformBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingSampledImageUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageImageUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingUpdateUnusedWhilePending" ptr val
    pokeField @"descriptorBindingPartiallyBound" ptr val
    pokeField @"descriptorBindingVariableDescriptorCount" ptr val
    pokeField @"runtimeDescriptorArray" ptr val

instance Offset "sType" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, pNext}

instance Offset "shaderInputAttachmentArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderInputAttachmentArrayDynamicIndexing}

instance Offset "shaderUniformTexelBufferArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderUniformTexelBufferArrayDynamicIndexing}

instance Offset "shaderStorageTexelBufferArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageTexelBufferArrayDynamicIndexing}

instance Offset "shaderUniformBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderUniformBufferArrayNonUniformIndexing}

instance Offset "shaderSampledImageArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderSampledImageArrayNonUniformIndexing}

instance Offset "shaderStorageBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageBufferArrayNonUniformIndexing}

instance Offset "shaderStorageImageArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageImageArrayNonUniformIndexing}

instance Offset "shaderInputAttachmentArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderInputAttachmentArrayNonUniformIndexing}

instance Offset "shaderUniformTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderUniformTexelBufferArrayNonUniformIndexing}

instance Offset "shaderStorageTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageTexelBufferArrayNonUniformIndexing}

instance Offset "descriptorBindingUniformBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingUniformBufferUpdateAfterBind}

instance Offset "descriptorBindingSampledImageUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingSampledImageUpdateAfterBind}

instance Offset "descriptorBindingStorageImageUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingStorageImageUpdateAfterBind}

instance Offset "descriptorBindingStorageBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingStorageBufferUpdateAfterBind}

instance Offset "descriptorBindingUniformTexelBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingUniformTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingStorageTexelBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingStorageTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingUpdateUnusedWhilePending" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingUpdateUnusedWhilePending}

instance Offset "descriptorBindingPartiallyBound" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingPartiallyBound}

instance Offset "descriptorBindingVariableDescriptorCount" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingVariableDescriptorCount}

instance Offset "runtimeDescriptorArray" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingFeatures, runtimeDescriptorArray}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingFeatures where

#endif