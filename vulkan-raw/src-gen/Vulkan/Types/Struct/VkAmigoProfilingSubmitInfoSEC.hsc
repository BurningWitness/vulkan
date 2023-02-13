{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_SEC_amigo_profiling

module Vulkan.Types.Struct.VkAmigoProfilingSubmitInfoSEC where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAmigoProfilingSubmitInfoSEC" #-} VkAmigoProfilingSubmitInfoSEC =
       VkAmigoProfilingSubmitInfoSEC
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , firstDrawTimestamp :: #{type uint64_t}
         , swapBufferTimestamp :: #{type uint64_t}
         }

instance Storable VkAmigoProfilingSubmitInfoSEC where
  sizeOf    _ = #{size      VkAmigoProfilingSubmitInfoSEC}
  alignment _ = #{alignment VkAmigoProfilingSubmitInfoSEC}

  peek ptr = 
    VkAmigoProfilingSubmitInfoSEC
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"firstDrawTimestamp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"swapBufferTimestamp" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"firstDrawTimestamp" ptr val
    pokeField @"swapBufferTimestamp" ptr val

instance Offset "sType" VkAmigoProfilingSubmitInfoSEC where
  rawOffset = #{offset VkAmigoProfilingSubmitInfoSEC, sType}

instance Offset "pNext" VkAmigoProfilingSubmitInfoSEC where
  rawOffset = #{offset VkAmigoProfilingSubmitInfoSEC, pNext}

instance Offset "firstDrawTimestamp" VkAmigoProfilingSubmitInfoSEC where
  rawOffset = #{offset VkAmigoProfilingSubmitInfoSEC, firstDrawTimestamp}

instance Offset "swapBufferTimestamp" VkAmigoProfilingSubmitInfoSEC where
  rawOffset = #{offset VkAmigoProfilingSubmitInfoSEC, swapBufferTimestamp}

#else

module Vulkan.Types.Struct.VkAmigoProfilingSubmitInfoSEC where

#endif