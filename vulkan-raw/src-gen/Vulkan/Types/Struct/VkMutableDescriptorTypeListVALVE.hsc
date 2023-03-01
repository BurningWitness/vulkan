{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_mutable_descriptor_type

module Vulkan.Types.Struct.VkMutableDescriptorTypeListVALVE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorType



data {-# CTYPE "vulkan/vulkan.h" "VkMutableDescriptorTypeListVALVE" #-} VkMutableDescriptorTypeListVALVE =
       VkMutableDescriptorTypeListVALVE
         { descriptorTypeCount :: #{type uint32_t}
         , pDescriptorTypes :: Ptr VkDescriptorType
         }

instance Storable VkMutableDescriptorTypeListVALVE where
  sizeOf    _ = #{size      VkMutableDescriptorTypeListVALVE}
  alignment _ = #{alignment VkMutableDescriptorTypeListVALVE}

  peek ptr = 
    VkMutableDescriptorTypeListVALVE
       <$> peek (Foreign.Storable.Offset.offset @"descriptorTypeCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDescriptorTypes" ptr)

  poke ptr val = do
    pokeField @"descriptorTypeCount" ptr val
    pokeField @"pDescriptorTypes" ptr val

instance Offset "descriptorTypeCount" VkMutableDescriptorTypeListVALVE where
  rawOffset = #{offset VkMutableDescriptorTypeListVALVE, descriptorTypeCount}

instance Offset "pDescriptorTypes" VkMutableDescriptorTypeListVALVE where
  rawOffset = #{offset VkMutableDescriptorTypeListVALVE, pDescriptorTypes}

#else

module Vulkan.Types.Struct.VkMutableDescriptorTypeListVALVE where

#endif