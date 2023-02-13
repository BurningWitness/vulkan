{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_inline_uniform_block

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceInlineUniformBlockFeaturesEXT" #-} VkPhysicalDeviceInlineUniformBlockFeaturesEXT =
       VkPhysicalDeviceInlineUniformBlockFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , inlineUniformBlock :: VkBool32
         , descriptorBindingInlineUniformBlockUpdateAfterBind :: VkBool32
         }

instance Storable VkPhysicalDeviceInlineUniformBlockFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceInlineUniformBlockFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceInlineUniformBlockFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceInlineUniformBlockFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"inlineUniformBlock" ptr)
       <*> peek (offset @"descriptorBindingInlineUniformBlockUpdateAfterBind" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"inlineUniformBlock" ptr val
    pokeField @"descriptorBindingInlineUniformBlockUpdateAfterBind" ptr val

instance Offset "sType" VkPhysicalDeviceInlineUniformBlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceInlineUniformBlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockFeaturesEXT, pNext}

instance Offset "inlineUniformBlock" VkPhysicalDeviceInlineUniformBlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockFeaturesEXT, inlineUniformBlock}

instance Offset "descriptorBindingInlineUniformBlockUpdateAfterBind" VkPhysicalDeviceInlineUniformBlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceInlineUniformBlockFeaturesEXT, descriptorBindingInlineUniformBlockUpdateAfterBind}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockFeaturesEXT where

#endif