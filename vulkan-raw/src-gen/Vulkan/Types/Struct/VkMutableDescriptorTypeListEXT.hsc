{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mutable_descriptor_type

module Vulkan.Types.Struct.VkMutableDescriptorTypeListEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorType



data {-# CTYPE "vulkan/vulkan.h" "VkMutableDescriptorTypeListEXT" #-} VkMutableDescriptorTypeListEXT =
       VkMutableDescriptorTypeListEXT
         { descriptorTypeCount :: #{type uint32_t}
         , pDescriptorTypes :: Ptr VkDescriptorType
         }

instance Storable VkMutableDescriptorTypeListEXT where
  sizeOf    _ = #{size      VkMutableDescriptorTypeListEXT}
  alignment _ = #{alignment VkMutableDescriptorTypeListEXT}

  peek ptr = 
    VkMutableDescriptorTypeListEXT
       <$> peek (Foreign.Storable.Offset.offset @"descriptorTypeCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDescriptorTypes" ptr)

  poke ptr val = do
    pokeField @"descriptorTypeCount" ptr val
    pokeField @"pDescriptorTypes" ptr val

instance Offset "descriptorTypeCount" VkMutableDescriptorTypeListEXT where
  rawOffset = #{offset VkMutableDescriptorTypeListEXT, descriptorTypeCount}

instance Offset "pDescriptorTypes" VkMutableDescriptorTypeListEXT where
  rawOffset = #{offset VkMutableDescriptorTypeListEXT, pDescriptorTypes}

#else

module Vulkan.Types.Struct.VkMutableDescriptorTypeListEXT where

#endif