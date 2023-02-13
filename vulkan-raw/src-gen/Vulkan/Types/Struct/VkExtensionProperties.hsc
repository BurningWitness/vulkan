{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkExtensionProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkExtensionProperties" #-} VkExtensionProperties =
       VkExtensionProperties
         { extensionName :: #{type char} -- ^ extension name
         , specVersion :: #{type uint32_t} -- ^ version of the extension specification implemented
         }

instance Storable VkExtensionProperties where
  sizeOf    _ = #{size      VkExtensionProperties}
  alignment _ = #{alignment VkExtensionProperties}

  peek ptr = 
    VkExtensionProperties
       <$> peek (offset @"extensionName" ptr)
       <*> peek (offset @"specVersion" ptr)

  poke ptr val = do
    pokeField @"extensionName" ptr val
    pokeField @"specVersion" ptr val

instance Offset "extensionName" VkExtensionProperties where
  rawOffset = #{offset VkExtensionProperties, extensionName}

instance Offset "specVersion" VkExtensionProperties where
  rawOffset = #{offset VkExtensionProperties, specVersion}