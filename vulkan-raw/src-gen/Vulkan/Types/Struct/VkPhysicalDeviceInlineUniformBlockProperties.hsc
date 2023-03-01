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

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceInlineUniformBlockProperties" #-} VkPhysicalDeviceInlineUniformBlockProperties =
       VkPhysicalDeviceInlineUniformBlockProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxInlineUniformBlockSize :: #{type uint32_t}
         , maxPerStageDescriptorInlineUniformBlocks :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks :: #{type uint32_t}
         , maxDescriptorSetInlineUniformBlocks :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindInlineUniformBlocks :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceInlineUniformBlockProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceInlineUniformBlockProperties}
  alignment _ = #{alignment VkPhysicalDeviceInlineUniformBlockProperties}

  peek ptr = 
    VkPhysicalDeviceInlineUniformBlockProperties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxInlineUniformBlockSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorInlineUniformBlocks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetInlineUniformBlocks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindInlineUniformBlocks" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxInlineUniformBlockSize" ptr val
    pokeField @"maxPerStageDescriptorInlineUniformBlocks" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" ptr val
    pokeField @"maxDescriptorSetInlineUniformBlocks" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindInlineUniformBlocks" ptr val

instance Offset "sType" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockProperties, sType}

instance Offset "pNext" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockProperties, pNext}

instance Offset "maxInlineUniformBlockSize" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockProperties, maxInlineUniformBlockSize}

instance Offset "maxPerStageDescriptorInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockProperties, maxPerStageDescriptorInlineUniformBlocks}

instance Offset "maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockProperties, maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks}

instance Offset "maxDescriptorSetInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockProperties, maxDescriptorSetInlineUniformBlocks}

instance Offset "maxDescriptorSetUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockProperties, maxDescriptorSetUpdateAfterBindInlineUniformBlocks}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockProperties where

#endif