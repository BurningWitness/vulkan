{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mutable_descriptor_type

module Vulkan.Types.Struct.VkMutableDescriptorTypeCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMutableDescriptorTypeListEXT



data {-# CTYPE "vulkan/vulkan.h" "VkMutableDescriptorTypeCreateInfoEXT" #-} VkMutableDescriptorTypeCreateInfoEXT =
       VkMutableDescriptorTypeCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mutableDescriptorTypeListCount :: #{type uint32_t}
         , pMutableDescriptorTypeLists :: Ptr VkMutableDescriptorTypeListEXT
         }

instance Storable VkMutableDescriptorTypeCreateInfoEXT where
  sizeOf    _ = #{size      VkMutableDescriptorTypeCreateInfoEXT}
  alignment _ = #{alignment VkMutableDescriptorTypeCreateInfoEXT}

  peek ptr = 
    VkMutableDescriptorTypeCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mutableDescriptorTypeListCount" ptr)
       <*> peek (offset @"pMutableDescriptorTypeLists" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mutableDescriptorTypeListCount" ptr val
    pokeField @"pMutableDescriptorTypeLists" ptr val

instance Offset "sType" VkMutableDescriptorTypeCreateInfoEXT where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoEXT, sType}

instance Offset "pNext" VkMutableDescriptorTypeCreateInfoEXT where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoEXT, pNext}

instance Offset "mutableDescriptorTypeListCount" VkMutableDescriptorTypeCreateInfoEXT where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoEXT, mutableDescriptorTypeListCount}

instance Offset "pMutableDescriptorTypeLists" VkMutableDescriptorTypeCreateInfoEXT where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoEXT, pMutableDescriptorTypeLists}

#else

module Vulkan.Types.Struct.VkMutableDescriptorTypeCreateInfoEXT where

#endif