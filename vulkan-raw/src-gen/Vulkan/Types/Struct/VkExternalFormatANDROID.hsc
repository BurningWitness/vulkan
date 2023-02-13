{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Struct.VkExternalFormatANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalFormatANDROID" #-} VkExternalFormatANDROID =
       VkExternalFormatANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , externalFormat :: #{type uint64_t}
         }

instance Storable VkExternalFormatANDROID where
  sizeOf    _ = #{size      VkExternalFormatANDROID}
  alignment _ = #{alignment VkExternalFormatANDROID}

  peek ptr = 
    VkExternalFormatANDROID
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"externalFormat" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"externalFormat" ptr val

instance Offset "sType" VkExternalFormatANDROID where
  rawOffset = #{offset VkExternalFormatANDROID, sType}

instance Offset "pNext" VkExternalFormatANDROID where
  rawOffset = #{offset VkExternalFormatANDROID, pNext}

instance Offset "externalFormat" VkExternalFormatANDROID where
  rawOffset = #{offset VkExternalFormatANDROID, externalFormat}

#else

module Vulkan.Types.Struct.VkExternalFormatANDROID where

#endif