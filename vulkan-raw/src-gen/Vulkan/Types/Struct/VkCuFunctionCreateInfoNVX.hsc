{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Struct.VkCuFunctionCreateInfoNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCuFunctionCreateInfoNVX" #-} VkCuFunctionCreateInfoNVX =
       VkCuFunctionCreateInfoNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , module_ :: VkCuModuleNVX
         , pName :: Ptr #{type char}
         }

instance Storable VkCuFunctionCreateInfoNVX where
  sizeOf    _ = #{size      VkCuFunctionCreateInfoNVX}
  alignment _ = #{alignment VkCuFunctionCreateInfoNVX}

  peek ptr = 
    VkCuFunctionCreateInfoNVX
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"module" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pName" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"module" ptr val
    pokeField @"pName" ptr val

instance Offset "sType" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset VkCuFunctionCreateInfoNVX, sType}

instance Offset "pNext" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset VkCuFunctionCreateInfoNVX, pNext}

instance Offset "module_" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset VkCuFunctionCreateInfoNVX, module}

instance Offset "pName" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset VkCuFunctionCreateInfoNVX, pName}

instance Offset "module" VkCuFunctionCreateInfoNVX where
  rawOffset = rawOffset @"module_" @VkCuFunctionCreateInfoNVX

instance HasField "module" VkCuFunctionCreateInfoNVX VkCuModuleNVX where
  getField = getField @"module_" @VkCuFunctionCreateInfoNVX

#else

module Vulkan.Types.Struct.VkCuFunctionCreateInfoNVX where

#endif