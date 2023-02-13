{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_mutable_descriptor_type

module Vulkan.Types.Struct.VkMutableDescriptorTypeCreateInfoVALVE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMutableDescriptorTypeListEXT



data {-# CTYPE "vulkan/vulkan.h" "VkMutableDescriptorTypeCreateInfoVALVE" #-} VkMutableDescriptorTypeCreateInfoVALVE =
       VkMutableDescriptorTypeCreateInfoVALVE
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mutableDescriptorTypeListCount :: #{type uint32_t}
         , pMutableDescriptorTypeLists :: Ptr VkMutableDescriptorTypeListEXT
         }

instance Storable VkMutableDescriptorTypeCreateInfoVALVE where
  sizeOf    _ = #{size      VkMutableDescriptorTypeCreateInfoVALVE}
  alignment _ = #{alignment VkMutableDescriptorTypeCreateInfoVALVE}

  peek ptr = 
    VkMutableDescriptorTypeCreateInfoVALVE
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mutableDescriptorTypeListCount" ptr)
       <*> peek (offset @"pMutableDescriptorTypeLists" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mutableDescriptorTypeListCount" ptr val
    pokeField @"pMutableDescriptorTypeLists" ptr val

instance Offset "sType" VkMutableDescriptorTypeCreateInfoVALVE where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoVALVE, sType}

instance Offset "pNext" VkMutableDescriptorTypeCreateInfoVALVE where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoVALVE, pNext}

instance Offset "mutableDescriptorTypeListCount" VkMutableDescriptorTypeCreateInfoVALVE where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoVALVE, mutableDescriptorTypeListCount}

instance Offset "pMutableDescriptorTypeLists" VkMutableDescriptorTypeCreateInfoVALVE where
  rawOffset = #{offset VkMutableDescriptorTypeCreateInfoVALVE, pMutableDescriptorTypeLists}

#else

module Vulkan.Types.Struct.VkMutableDescriptorTypeCreateInfoVALVE where

#endif