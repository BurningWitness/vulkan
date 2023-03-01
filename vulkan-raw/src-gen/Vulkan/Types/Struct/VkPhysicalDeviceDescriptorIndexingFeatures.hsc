{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorIndexingFeatures}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorIndexingFeatures}

  peek ptr = 
    VkPhysicalDeviceDescriptorIndexingFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderInputAttachmentArrayDynamicIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderUniformTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderUniformBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSampledImageArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageImageArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderInputAttachmentArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingUniformBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingSampledImageUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingStorageImageUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingStorageBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingUpdateUnusedWhilePending" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingPartiallyBound" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingVariableDescriptorCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"runtimeDescriptorArray" ptr)

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
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, pNext}

instance Offset "shaderInputAttachmentArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderInputAttachmentArrayDynamicIndexing}

instance Offset "shaderUniformTexelBufferArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderUniformTexelBufferArrayDynamicIndexing}

instance Offset "shaderStorageTexelBufferArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageTexelBufferArrayDynamicIndexing}

instance Offset "shaderUniformBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderUniformBufferArrayNonUniformIndexing}

instance Offset "shaderSampledImageArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderSampledImageArrayNonUniformIndexing}

instance Offset "shaderStorageBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageBufferArrayNonUniformIndexing}

instance Offset "shaderStorageImageArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageImageArrayNonUniformIndexing}

instance Offset "shaderInputAttachmentArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderInputAttachmentArrayNonUniformIndexing}

instance Offset "shaderUniformTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderUniformTexelBufferArrayNonUniformIndexing}

instance Offset "shaderStorageTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, shaderStorageTexelBufferArrayNonUniformIndexing}

instance Offset "descriptorBindingUniformBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingUniformBufferUpdateAfterBind}

instance Offset "descriptorBindingSampledImageUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingSampledImageUpdateAfterBind}

instance Offset "descriptorBindingStorageImageUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingStorageImageUpdateAfterBind}

instance Offset "descriptorBindingStorageBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingStorageBufferUpdateAfterBind}

instance Offset "descriptorBindingUniformTexelBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingUniformTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingStorageTexelBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingStorageTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingUpdateUnusedWhilePending" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingUpdateUnusedWhilePending}

instance Offset "descriptorBindingPartiallyBound" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingPartiallyBound}

instance Offset "descriptorBindingVariableDescriptorCount" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, descriptorBindingVariableDescriptorCount}

instance Offset "runtimeDescriptorArray" VkPhysicalDeviceDescriptorIndexingFeatures where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeatures, runtimeDescriptorArray}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingFeatures where

#endif