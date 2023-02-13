{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_indexing

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountLayoutSupportEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetVariableDescriptorCountLayoutSupportEXT" #-} VkDescriptorSetVariableDescriptorCountLayoutSupportEXT =
       VkDescriptorSetVariableDescriptorCountLayoutSupportEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxVariableDescriptorCount :: #{type uint32_t}
         }

instance Storable VkDescriptorSetVariableDescriptorCountLayoutSupportEXT where
  sizeOf    _ = #{size      VkDescriptorSetVariableDescriptorCountLayoutSupportEXT}
  alignment _ = #{alignment VkDescriptorSetVariableDescriptorCountLayoutSupportEXT}

  peek ptr = 
    VkDescriptorSetVariableDescriptorCountLayoutSupportEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxVariableDescriptorCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxVariableDescriptorCount" ptr val

instance Offset "sType" VkDescriptorSetVariableDescriptorCountLayoutSupportEXT where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountLayoutSupportEXT, sType}

instance Offset "pNext" VkDescriptorSetVariableDescriptorCountLayoutSupportEXT where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountLayoutSupportEXT, pNext}

instance Offset "maxVariableDescriptorCount" VkDescriptorSetVariableDescriptorCountLayoutSupportEXT where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountLayoutSupportEXT, maxVariableDescriptorCount}

#else

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountLayoutSupportEXT where

#endif