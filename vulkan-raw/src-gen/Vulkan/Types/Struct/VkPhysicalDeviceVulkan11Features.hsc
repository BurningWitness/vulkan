{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan11Features where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkan11Features" #-} VkPhysicalDeviceVulkan11Features =
       VkPhysicalDeviceVulkan11Features
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageBuffer16BitAccess :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in BufferBlock
         , uniformAndStorageBuffer16BitAccess :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in BufferBlock and Block
         , storagePushConstant16 :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in PushConstant
         , storageInputOutput16 :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in shader inputs and outputs
         , multiview :: VkBool32 -- ^ Multiple views in a renderpass
         , multiviewGeometryShader :: VkBool32 -- ^ Multiple views in a renderpass w/ geometry shader
         , multiviewTessellationShader :: VkBool32 -- ^ Multiple views in a renderpass w/ tessellation shader
         , variablePointersStorageBuffer :: VkBool32
         , variablePointers :: VkBool32
         , protectedMemory :: VkBool32
         , samplerYcbcrConversion :: VkBool32 -- ^ Sampler color conversion supported
         , shaderDrawParameters :: VkBool32
         }

instance Storable VkPhysicalDeviceVulkan11Features where
  sizeOf    _ = #{size      VkPhysicalDeviceVulkan11Features}
  alignment _ = #{alignment VkPhysicalDeviceVulkan11Features}

  peek ptr = 
    VkPhysicalDeviceVulkan11Features
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageBuffer16BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformAndStorageBuffer16BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storagePushConstant16" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageInputOutput16" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiview" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiviewGeometryShader" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiviewTessellationShader" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointersStorageBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"protectedMemory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerYcbcrConversion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderDrawParameters" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"storageBuffer16BitAccess" ptr val
    pokeField @"uniformAndStorageBuffer16BitAccess" ptr val
    pokeField @"storagePushConstant16" ptr val
    pokeField @"storageInputOutput16" ptr val
    pokeField @"multiview" ptr val
    pokeField @"multiviewGeometryShader" ptr val
    pokeField @"multiviewTessellationShader" ptr val
    pokeField @"variablePointersStorageBuffer" ptr val
    pokeField @"variablePointers" ptr val
    pokeField @"protectedMemory" ptr val
    pokeField @"samplerYcbcrConversion" ptr val
    pokeField @"shaderDrawParameters" ptr val

instance Offset "sType" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, sType}

instance Offset "pNext" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, pNext}

instance Offset "storageBuffer16BitAccess" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, storageBuffer16BitAccess}

instance Offset "uniformAndStorageBuffer16BitAccess" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, uniformAndStorageBuffer16BitAccess}

instance Offset "storagePushConstant16" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, storagePushConstant16}

instance Offset "storageInputOutput16" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, storageInputOutput16}

instance Offset "multiview" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, multiview}

instance Offset "multiviewGeometryShader" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, multiviewGeometryShader}

instance Offset "multiviewTessellationShader" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, multiviewTessellationShader}

instance Offset "variablePointersStorageBuffer" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, variablePointersStorageBuffer}

instance Offset "variablePointers" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, variablePointers}

instance Offset "protectedMemory" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, protectedMemory}

instance Offset "samplerYcbcrConversion" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, samplerYcbcrConversion}

instance Offset "shaderDrawParameters" VkPhysicalDeviceVulkan11Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan11Features, shaderDrawParameters}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan11Features where

#endif