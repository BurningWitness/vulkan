{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkPhysicalDeviceInlineUniformBlockProperties}
  alignment _ = #{alignment struct VkPhysicalDeviceInlineUniformBlockProperties}

  peek ptr = 
    VkPhysicalDeviceInlineUniformBlockProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxInlineUniformBlockSize" ptr)
       <*> peek (offset @"maxPerStageDescriptorInlineUniformBlocks" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" ptr)
       <*> peek (offset @"maxDescriptorSetInlineUniformBlocks" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindInlineUniformBlocks" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxInlineUniformBlockSize" ptr val
    pokeField @"maxPerStageDescriptorInlineUniformBlocks" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" ptr val
    pokeField @"maxDescriptorSetInlineUniformBlocks" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindInlineUniformBlocks" ptr val

instance Offset "sType" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockProperties, sType}

instance Offset "pNext" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockProperties, pNext}

instance Offset "maxInlineUniformBlockSize" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockProperties, maxInlineUniformBlockSize}

instance Offset "maxPerStageDescriptorInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockProperties, maxPerStageDescriptorInlineUniformBlocks}

instance Offset "maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockProperties, maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks}

instance Offset "maxDescriptorSetInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockProperties, maxDescriptorSetInlineUniformBlocks}

instance Offset "maxDescriptorSetUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockProperties where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockProperties, maxDescriptorSetUpdateAfterBindInlineUniformBlocks}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockProperties where

#endif