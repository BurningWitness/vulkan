{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkOpaqueCaptureDescriptorDataCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkOpaqueCaptureDescriptorDataCreateInfoEXT" #-} VkOpaqueCaptureDescriptorDataCreateInfoEXT =
       VkOpaqueCaptureDescriptorDataCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , opaqueCaptureDescriptorData :: Ptr ()
         }

instance Storable VkOpaqueCaptureDescriptorDataCreateInfoEXT where
  sizeOf    _ = #{size      struct VkOpaqueCaptureDescriptorDataCreateInfoEXT}
  alignment _ = #{alignment struct VkOpaqueCaptureDescriptorDataCreateInfoEXT}

  peek ptr = 
    VkOpaqueCaptureDescriptorDataCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"opaqueCaptureDescriptorData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"opaqueCaptureDescriptorData" ptr val

instance Offset "sType" VkOpaqueCaptureDescriptorDataCreateInfoEXT where
  rawOffset = #{offset struct VkOpaqueCaptureDescriptorDataCreateInfoEXT, sType}

instance Offset "pNext" VkOpaqueCaptureDescriptorDataCreateInfoEXT where
  rawOffset = #{offset struct VkOpaqueCaptureDescriptorDataCreateInfoEXT, pNext}

instance Offset "opaqueCaptureDescriptorData" VkOpaqueCaptureDescriptorDataCreateInfoEXT where
  rawOffset = #{offset struct VkOpaqueCaptureDescriptorDataCreateInfoEXT, opaqueCaptureDescriptorData}

#else

module Vulkan.Types.Struct.VkOpaqueCaptureDescriptorDataCreateInfoEXT where

#endif