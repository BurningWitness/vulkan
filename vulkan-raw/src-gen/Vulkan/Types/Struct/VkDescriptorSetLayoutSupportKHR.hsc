{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance3

module Vulkan.Types.Struct.VkDescriptorSetLayoutSupportKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetLayoutSupportKHR" #-} VkDescriptorSetLayoutSupportKHR =
       VkDescriptorSetLayoutSupportKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supported :: VkBool32
         }

instance Storable VkDescriptorSetLayoutSupportKHR where
  sizeOf    _ = #{size      VkDescriptorSetLayoutSupportKHR}
  alignment _ = #{alignment VkDescriptorSetLayoutSupportKHR}

  peek ptr = 
    VkDescriptorSetLayoutSupportKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supported" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supported" ptr val

instance Offset "sType" VkDescriptorSetLayoutSupportKHR where
  rawOffset = #{offset VkDescriptorSetLayoutSupportKHR, sType}

instance Offset "pNext" VkDescriptorSetLayoutSupportKHR where
  rawOffset = #{offset VkDescriptorSetLayoutSupportKHR, pNext}

instance Offset "supported" VkDescriptorSetLayoutSupportKHR where
  rawOffset = #{offset VkDescriptorSetLayoutSupportKHR, supported}

#else

module Vulkan.Types.Struct.VkDescriptorSetLayoutSupportKHR where

#endif