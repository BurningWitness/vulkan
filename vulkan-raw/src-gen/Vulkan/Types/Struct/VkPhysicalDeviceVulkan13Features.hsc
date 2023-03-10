{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan13Features where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkan13Features" #-} VkPhysicalDeviceVulkan13Features =
       VkPhysicalDeviceVulkan13Features
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , robustImageAccess :: VkBool32
         , inlineUniformBlock :: VkBool32
         , descriptorBindingInlineUniformBlockUpdateAfterBind :: VkBool32
         , pipelineCreationCacheControl :: VkBool32
         , privateData :: VkBool32
         , shaderDemoteToHelperInvocation :: VkBool32
         , shaderTerminateInvocation :: VkBool32
         , subgroupSizeControl :: VkBool32
         , computeFullSubgroups :: VkBool32
         , synchronization2 :: VkBool32
         , textureCompressionASTC_HDR :: VkBool32
         , shaderZeroInitializeWorkgroupMemory :: VkBool32
         , dynamicRendering :: VkBool32
         , shaderIntegerDotProduct :: VkBool32
         , maintenance4 :: VkBool32
         }

instance Storable VkPhysicalDeviceVulkan13Features where
  sizeOf    _ = #{size      VkPhysicalDeviceVulkan13Features}
  alignment _ = #{alignment VkPhysicalDeviceVulkan13Features}

  peek ptr = 
    VkPhysicalDeviceVulkan13Features
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"robustImageAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inlineUniformBlock" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingInlineUniformBlockUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineCreationCacheControl" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"privateData" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderDemoteToHelperInvocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderTerminateInvocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subgroupSizeControl" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"computeFullSubgroups" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"synchronization2" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"textureCompressionASTC_HDR" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderZeroInitializeWorkgroupMemory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dynamicRendering" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderIntegerDotProduct" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maintenance4" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"robustImageAccess" ptr val
    pokeField @"inlineUniformBlock" ptr val
    pokeField @"descriptorBindingInlineUniformBlockUpdateAfterBind" ptr val
    pokeField @"pipelineCreationCacheControl" ptr val
    pokeField @"privateData" ptr val
    pokeField @"shaderDemoteToHelperInvocation" ptr val
    pokeField @"shaderTerminateInvocation" ptr val
    pokeField @"subgroupSizeControl" ptr val
    pokeField @"computeFullSubgroups" ptr val
    pokeField @"synchronization2" ptr val
    pokeField @"textureCompressionASTC_HDR" ptr val
    pokeField @"shaderZeroInitializeWorkgroupMemory" ptr val
    pokeField @"dynamicRendering" ptr val
    pokeField @"shaderIntegerDotProduct" ptr val
    pokeField @"maintenance4" ptr val

instance Offset "sType" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, sType}

instance Offset "pNext" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, pNext}

instance Offset "robustImageAccess" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, robustImageAccess}

instance Offset "inlineUniformBlock" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, inlineUniformBlock}

instance Offset "descriptorBindingInlineUniformBlockUpdateAfterBind" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, descriptorBindingInlineUniformBlockUpdateAfterBind}

instance Offset "pipelineCreationCacheControl" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, pipelineCreationCacheControl}

instance Offset "privateData" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, privateData}

instance Offset "shaderDemoteToHelperInvocation" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, shaderDemoteToHelperInvocation}

instance Offset "shaderTerminateInvocation" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, shaderTerminateInvocation}

instance Offset "subgroupSizeControl" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, subgroupSizeControl}

instance Offset "computeFullSubgroups" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, computeFullSubgroups}

instance Offset "synchronization2" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, synchronization2}

instance Offset "textureCompressionASTC_HDR" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, textureCompressionASTC_HDR}

instance Offset "shaderZeroInitializeWorkgroupMemory" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, shaderZeroInitializeWorkgroupMemory}

instance Offset "dynamicRendering" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, dynamicRendering}

instance Offset "shaderIntegerDotProduct" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, shaderIntegerDotProduct}

instance Offset "maintenance4" VkPhysicalDeviceVulkan13Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Features, maintenance4}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan13Features where

#endif