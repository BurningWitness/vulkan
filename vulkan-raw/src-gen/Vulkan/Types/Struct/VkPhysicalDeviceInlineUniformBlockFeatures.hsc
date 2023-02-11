{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceInlineUniformBlockFeatures" #-} VkPhysicalDeviceInlineUniformBlockFeatures =
       VkPhysicalDeviceInlineUniformBlockFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , inlineUniformBlock :: VkBool32
         , descriptorBindingInlineUniformBlockUpdateAfterBind :: VkBool32
         }

instance Storable VkPhysicalDeviceInlineUniformBlockFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceInlineUniformBlockFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceInlineUniformBlockFeatures}

  peek ptr = 
    VkPhysicalDeviceInlineUniformBlockFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"inlineUniformBlock" ptr)
       <*> peek (offset @"descriptorBindingInlineUniformBlockUpdateAfterBind" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"inlineUniformBlock" ptr val
    pokeField @"descriptorBindingInlineUniformBlockUpdateAfterBind" ptr val

instance Offset "sType" VkPhysicalDeviceInlineUniformBlockFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceInlineUniformBlockFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockFeatures, pNext}

instance Offset "inlineUniformBlock" VkPhysicalDeviceInlineUniformBlockFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockFeatures, inlineUniformBlock}

instance Offset "descriptorBindingInlineUniformBlockUpdateAfterBind" VkPhysicalDeviceInlineUniformBlockFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceInlineUniformBlockFeatures, descriptorBindingInlineUniformBlockUpdateAfterBind}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockFeatures where

#endif