{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountLayoutSupport where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetVariableDescriptorCountLayoutSupport" #-} VkDescriptorSetVariableDescriptorCountLayoutSupport =
       VkDescriptorSetVariableDescriptorCountLayoutSupport
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxVariableDescriptorCount :: #{type uint32_t}
         }

instance Storable VkDescriptorSetVariableDescriptorCountLayoutSupport where
  sizeOf    _ = #{size      VkDescriptorSetVariableDescriptorCountLayoutSupport}
  alignment _ = #{alignment VkDescriptorSetVariableDescriptorCountLayoutSupport}

  peek ptr = 
    VkDescriptorSetVariableDescriptorCountLayoutSupport
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxVariableDescriptorCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxVariableDescriptorCount" ptr val

instance Offset "sType" VkDescriptorSetVariableDescriptorCountLayoutSupport where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountLayoutSupport, sType}

instance Offset "pNext" VkDescriptorSetVariableDescriptorCountLayoutSupport where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountLayoutSupport, pNext}

instance Offset "maxVariableDescriptorCount" VkDescriptorSetVariableDescriptorCountLayoutSupport where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountLayoutSupport, maxVariableDescriptorCount}

#else

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountLayoutSupport where

#endif