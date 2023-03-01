{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_inline_uniform_block

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceInlineUniformBlockPropertiesEXT" #-} VkPhysicalDeviceInlineUniformBlockPropertiesEXT =
       VkPhysicalDeviceInlineUniformBlockPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxInlineUniformBlockSize :: #{type uint32_t}
         , maxPerStageDescriptorInlineUniformBlocks :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks :: #{type uint32_t}
         , maxDescriptorSetInlineUniformBlocks :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindInlineUniformBlocks :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceInlineUniformBlockPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceInlineUniformBlockPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceInlineUniformBlockPropertiesEXT
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

instance Offset "sType" VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockPropertiesEXT, pNext}

instance Offset "maxInlineUniformBlockSize" VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockPropertiesEXT, maxInlineUniformBlockSize}

instance Offset "maxPerStageDescriptorInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockPropertiesEXT, maxPerStageDescriptorInlineUniformBlocks}

instance Offset "maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockPropertiesEXT, maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks}

instance Offset "maxDescriptorSetInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockPropertiesEXT, maxDescriptorSetInlineUniformBlocks}

instance Offset "maxDescriptorSetUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceInlineUniformBlockPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockPropertiesEXT, maxDescriptorSetUpdateAfterBindInlineUniformBlocks}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockPropertiesEXT where

#endif